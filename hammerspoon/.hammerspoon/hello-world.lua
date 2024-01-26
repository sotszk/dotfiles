hs.hotkey.bind({"cmd", "shift", "ctrl"}, "W", function()
    hs.alert.show("Hello World!")
end)

hs.hotkey.bind({"cmd", "shift", "ctrl"}, "R", function()
    hs.reload()
end)

caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("AWAKE")
    else
        caffeine:setTitle("SLEEPY")
    end
end

hs.hotkey.bind({"cmd", "ctrl", "shift"}, "p", function()
    hs.spotify.play()
    hs.spotify.displayCurrentTrack()
end)

function exampleKeybind(key, callback)
    hs.hotkey.bind({"cmd", "ctrl", "shift"}, key, callback)
end

exampleKeybind("o", function()
    hs.spotify.pause()
end)

exampleKeybind("right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x + 10
    win:setFrame(f)
end)


exampleKeybind("left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()

    f.x = f.x - 10
    win:setFrame(f)
end)
