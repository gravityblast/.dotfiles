set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'jnwhiteh/vim-golang'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pilu/snipmate.vim'
" Bundle 'Blackrush/vim-gocode'
" Bundle 'guns/vim-clojure-static'
" Bundle 'bling/vim-airline'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

let g:airline_powerline_fonts = 1

" load file type plugins + indentation
filetype plugin indent on
syntax on

nnoremap <leader>c :nohlsearch<CR>

set encoding=utf-8
set showcmd                     " display incomplete commands

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Colorscheme
" colorscheme Tomorrow-Night-Bright
set background=dark
colorscheme solarized

" code folding
set nofoldenable

let perl_fold=1                           " perl folding
let ruby_fold=1                           " ruby folding
let javaScript_fold=1                     " javascript folding
let g:xml_syntax_folding=1                " xml folding
set foldmethod=syntax                     " fold using syntax checking
set foldnestmax=5                         " max detpth of folding
" code folding key-bindings:
" zo - Open the fold on the same line as the cursor
" zc - Close the fold that the cursor is inside
" zR - Open all folds
" zM - Close all folds

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" highlight trailing whitespace
set list listchars=trail:·,tab:>-

" backups and swapfiles
set nobackup
set noswapfile

" gui
set ruler
set cursorline
set number

" tab completion for files
set wildmenu
set wildmode=longest,list

" always show the status line
set laststatus=2

" scrolling
set scrolloff=5

let g:Powerline_symbols = 'fancy'


" Nerdtree
map <F2> :NERDTreeToggle<CR>
