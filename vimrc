set nocompatible                " choose no compatibility with legacy vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
" Bundle 'jnwhiteh/vim-golang'
Bundle "benmills/vimux-golang"
Bundle "fatih/vim-go"
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pilu/snipmate.vim'
Bundle 'vimoutliner/vimoutliner'
Bundle "pangloss/vim-javascript"
Bundle "junegunn/seoul256.vim"
Bundle "tpope/vim-surround"
Bundle "jgdavey/vim-turbux"
Bundle "kien/rainbow_parentheses.vim"
Bundle "guns/vim-clojure-static"
Bundle "tpope/vim-fireplace"
Bundle "tpope/vim-leiningen"
Bundle "tpope/vim-classpath"
Bundle "benmills/vimux"
Bundle "vim-scripts/vim-jsbeautify"
Bundle "jdonaldson/vaxe"
Bundle "groenewege/vim-less"
Bundle 'derekwyatt/vim-scala'
Bundle 'majutsushi/tagbar'
Bundle 'wting/rust.vim'
Bundle 'altercation/vim-colors-solarized'

" Bundle 'Blackrush/vim-gocode'
" Bundle 'bling/vim-airline'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

augroup vimrcEx
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

let g:airline_powerline_fonts = 1

" load file type plugins + indentation
filetype plugin indent on
syntax on

let mapleader=","

set encoding=utf-8
set showcmd                     " display incomplete commands
set mouse=nvi
set pastetoggle=<F4>

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

autocmd Filetype go setlocal noexpandtab
autocmd Filetype go setlocal nolist

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" highlight trailing whitespace
set list listchars=trail:·,tab:>-


" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

:nnoremap <CR> :nohlsearch<CR><CR>

" Colorscheme
" colorscheme Tomorrow-Night-Bright

" let g:seoul256_background = 234
" colo seoul256

set background=light
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

" backups and swapfiles
set nobackup
set noswapfile

" gui
set ruler
set cursorline
set number

" tab completion for files
set wildmenu
set wildmode=longest:full,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/coverage/*,*/vcr_cassettes/*,Godeps/_workspace/*     " MacOSX/Linux

" always show the status line
set laststatus=2

" scrolling
set scrolloff=5

let g:Powerline_symbols = 'fancy'

" autcomplete
set completeopt-=preview

" Nerdtree
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" Golang
map <Leader>gt :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>grt :wa<CR>  :GolangTestFocused<CR>
map grun :w <CR>:call VimuxRunCommand("go run " . @%)
let g:go_fmt_command = "goimports"

" Ruby
ab bp require 'pry'; binding.pry;

" Eval
map <Leader>e :w<CR>:%Eval<CR>
