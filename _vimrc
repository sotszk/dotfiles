set clipboard+=unnamed

set backspace=indent,eol,start


" 挙動をvimのデフォルト設定にする
" set nocompatible

" スワップファイルを使用しない
set noswapfile

" ルーラーを表示
set ruler

" status ラインを常に表示
set laststatus=2

" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" タイトルバーにパス情報を表示させる
set title

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu


set hlsearch
set background=dark
set hidden
set expandtab
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

syntax on

let g:indent_guides_enable_on_vim_startup = 1

""""""""""""""""""""""""""""""
" 最後のカーソル位置を復元する
""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on


