let $LANG = "en" " change the default language

set nocompatible
set clipboard+=unnamed
set noswapfile " do not use swap files
set ruler " show a ruler
set scrolloff=3
set number
set laststatus=2 " status ラインを常に表示
" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっていない)
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title " タイトルバーにパス情報を表示させる
set wildmenu " コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set hlsearch " 検索語句のハイライト
set background=dark
set hidden
set expandtab " tabをspaceに変換する
set autoindent
" set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set showmatch " 括弧の対応関係を一瞬表示する
set showcmd " 入力中のコマンドを表示する
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set backspace=indent,eol,start " バックスペース押下時の挙動を変更する
set list " 不可視文字を表示する
set listchars=tab:>-,trail:.

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
" imap { {}<LEFT>
" imap [ []<LEFT>
" imap ( ()<LEFT>
""""""""""""""""""""""""""""""

let loaded_matchparen = 1 " 括弧のハイライトを非表示にする

filetype on " filetypeの自動検出(最後の方に書いた方がいいらしい)
