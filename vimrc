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
Bundle 'msanders/snipmate.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" load file type plugins + indentation
filetype plugin indent on
syntax on

nnoremap <leader>c :nohlsearch<CR>
nnoremap <leader>' :CtrlP<CR>

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
colorscheme Tomorrow-Night-Eighties


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

" always show the status line
set laststatus=2

" scrolling
set scrolloff=5
