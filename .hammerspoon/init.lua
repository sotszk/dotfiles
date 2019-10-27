require('watcher')
require('hello-world')

local function keyCode(key, modifiers)
    modifiers = modifiers or {}
      return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
    end
end

local function keyCodeSet(keys)
    return function()
        for i, keyEvent in ipairs(keys) do
            keyEvent()
        end
    end
end

local function remapKey(modifiers, key, keyCode)
    hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

local function disableAllHotkeys()
    for k, v in pairs(hs.hotkey.getHotkeys()) do
      v['_hk']:disable()
    end
end

local function enableAllHotkeys()
    for k, v in pairs(hs.hotkey.getHotkeys()) do
        v['_hk']:enable()
    end
end

local function handleGlobalAppEvent(name, event, app)
    if event == hs.application.watcher.activated then
        -- hs.alert.show(name)
        if name == "iTerm2" then
            disableAllHotkeys()
        else
            enableAllHotkeys()
        end
    end
end

appsWatcher = hs.application.watcher.new(handleGlobalAppEvent)
appsWatcher:start()

remapKey({'ctrl'}, 'h', keyCode('left'))
remapKey({'ctrl'}, 'l', keyCode('right'))
remapKey({'ctrl'}, 'k', keyCode('up'))
remapKey({'ctrl'}, 'j', keyCode('down'))

remapKey({'ctrl'}, 'b', keyCode('left', {'alt'}))
remapKey({'ctrl'}, 'e', keyCode('right', {'alt'}))

remapKey({'ctrl'}, 'f', keyCode('right', {'cmd'}))
remapKey({'ctrl'}, 'a', keyCode('left', {'cmd'}))

remapKey({'ctrl'}, 'n', keyCode('delete'))
remapKey({'ctrl'}, 'd', keyCode('forwarddelete'))

remapKey({'ctrl'}, 'w', keyCode('delete', {'alt'}))

-- kill line (default: ctrl + k)
local function keyCodeKillLine()
  keyCode('e', {'shift', 'ctrl'})()
  keyCode('x', {'cmd'})()
end
remapKey({'ctrl'}, 'u', keyCodeKillLine)

remapKey({'ctrl'}, '[', keyCode('escape'))

remapKey({'ctrl'}, 'v', keyCode('pagedown'))
remapKey({'alt'}, 'v', keyCode('pageup'))
