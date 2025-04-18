set PATH /opt/homebrew/bin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/fvm/default/bin $PATH
set PATH ~/Library/Android/sdk/platform-tools $PATH
set -x PATH ~/.anyenv/bin $PATH
set -Ux RBENV_ROOT ~/.anyenv/envs/.rbenv
set -U fish_user_paths $RBENV_ROOT/bin $fish_user_paths
anyenv init - fish | source
set PATH /usr/local/go/bin $PATH
set PATH $(go env GOPATH)/bin $PATH

set -g theme_nerd_fonts yes

# removed welcome message
function greeting
  echo 'Hello Fish! (git_current_branch)'
end

# git custom aliases
alias gc 'git commit'
alias gcm 'git commit -m'
alias gcam 'git commit --amend'
alias gs 'git status'
alias gp 'git pull'
alias gf 'git fetch'
alias gco 'git checkout'
alias ga 'git add .'
alias gpush 'git push'
alias gd 'git diff'
alias gb 'git branch'
alias gr 'git reset'
alias grs 'git reset --soft'
alias grh 'git reset --hard'
alias gm 'git merge'

# other custom aliases
alias c 'code .'
alias ll 'ls -1a'
alias tree 'tree -NC'
alias fishconfig 'cat ~/.config/fish/config.fish'

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by Windsurf
fish_add_path ~/.codeium/windsurf/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
