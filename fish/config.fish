set -x PATH ~/.anyenv/bin $PATH
anyenv init - fish | source

# removed welcome message
function greeting
  echo 'Hello Fish! (git_current_branch)'
end

function reload
  . ~/.ghq/github.com/SotaSuzuki/dotfiles/fish/config.fish
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

# npm custom aliases
alias ni 'npm install'
alias nid 'npm install -D'
alias nr 'npm run'
alias nrs 'npm run start'
alias nrd 'npm run dev'
alias nrt 'npm run test'
alias nrl 'npm run lint'
alias nrb 'npm run build'
alias npm-update 'npx npm-check -u'

# yarn custom aliases
alias y 'yarn'
alias ya 'yarn add'
alias yad 'yarn add -D'
alias ys 'yarn start'
alias yd 'yarn dev'
alias yt 'yarn test'
alias yl 'yarn lint'
alias yb 'yarn build'
alias yarn-update 'yarn upgrade-interactive --latest'

# other custom aliases
alias c 'code .'
alias ll 'ls -1a'
alias tree 'tree -NC'
alias fishconfig 'cat ~/.config/fish/config.fish'
