set PATH /opt/homebrew/bin $PATH

set -x PATH ~/.anyenv/bin $PATH
anyenv init - fish | source

# removed welcome message
function greeting
  echo 'Hello Fish! (git_current_branch)'
end

function reload
  . ~/ghq/github.com/sotszk/dotfiles/fish/config.fish
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
set -gx PNPM_HOME "/Users/sotasuzuki/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
