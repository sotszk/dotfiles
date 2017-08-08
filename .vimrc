set clipboard+=unnamed

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

" 検索語句のハイライト
set hlsearch

set background=dark
set hidden

" tabをspaceに変換する
set expandtab

" 行番号を表示する
set number


set autoindent
" set smartindent
set tabstop=2
set shiftwidth=2
set smarttab

" 括弧の対応関係を一瞬表示する
set showmatch

" 入力中のコマンドを表示する
set showcmd

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" バックスペース押下時の挙動を変更する
set backspace=indent,eol,start

" 不可視文字を表示する
set list
set listchars=tab:>-,trail:.

syntax on

let g:indent_guides_enable_on_vim_startup = 1

" カーソルの形状を変更（insert mode 時）
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


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
" imap { {}<LEFT>
" imap [ []<LEFT>
" imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" 括弧のハイライトがうざったいので非表示にする
let loaded_matchparen = 1

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on
