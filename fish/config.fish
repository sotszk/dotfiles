function fish_user_key_bindings
  # peco
  bind \cr 'peco_select_history (commandline -b)'

  # fzf
  bind \ctf '__fzf_find_file'
  bind \ctr '__fzf_reverse_isearch'
  bind \ed '__fzf_cd'
end

function fish_prompt
  set __fish_git_prompt_showstashstate 'yes'
  set __fish_git_prompt_showupstream 'yes'
  set __fish_git_prompt_showdirtystate 'yes'
  set __fish_git_prompt_color_branch yellow
  set __fish_git_prompt_char_dirtystate '⚡ '
  set -g fish_prompt_pwd_dir_length 0
  set_color red
  printf '[%s@%s]' (whoami) (prompt_hostname)
  set_color green
  printf ' [git]%s' (__fish_git_prompt)
  set_color normal
  printf ' %s\n' (prompt_pwd)
  echo '% '
end
