set nocompatible                " choose no compatibility with legacy vi
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
" Plugin 'jnwhiteh/vim-golang'
Plugin 'benmills/vimux-golang'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pilu/snipmate.vim'
Plugin 'vimoutliner/vimoutliner'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/seoul256.vim'
Plugin 'tpope/vim-surround'
Plugin 'jgdavey/vim-turbux'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-classpath'
Plugin 'benmills/vimux'
Plugin 'vim-scripts/vim-jsbeautify'
Plugin 'jdonaldson/vaxe'
Plugin 'groenewege/vim-less'
Plugin 'derekwyatt/vim-scala'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'vim-scripts/paredit.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'pilu/vimux-elixir'
Plugin 'ElmCast/elm-vim'
Plugin 'slashmili/alchemist.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'morhetz/gruvbox'
Plugin 'mattn/emmet-vim'

" Plugin 'Blackrush/vim-gocode'
" Plugin 'bling/vim-airline'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

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

" Copy selection to clipboard
vnoremap <Leader>c "+y

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
set wildignore+=*/target/*,*/tmp/*,*.so,*.swp,*.zip,*/coverage/*,*/vcr_cassettes/*,Godeps/_workspace/,*/node_modules/*,*/deps/*

" always show the status line
set laststatus=2

" scrolling
set scrolloff=5

let g:Powerline_symbols = 'fancy'

" autcomplete
set completeopt-=preview
set complete-=i

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

" Ruby
ab bp require 'pry'; binding.pry;

" Eval
map <Leader>e :w<CR>:%Eval<CR>

:set timeout timeoutlen=5000 ttimeoutlen=100

" allow buffers to be hidden without saving
" set hidden

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

let g:ctrlp_working_path_mode = 'w'

" elm
au FileType elm nmap <leader>m <Plug>(elm-make)
au FileType elm nmap <leader>w <Plug>(elm-browse-docs)
au FileType elm nmap <leader>d <Plug>(elm-show-docs)
au FileType elm nmap <leader>e <Plug>(elm-error-detail)
au BufWritePost *.elm ElmMake
au Filetype elm set tabstop=4 softtabstop=4 shiftwidth=4

let g:elm_format_autosave = 1
" au BufWritePost *.elm ElmMakeFile("Main.elm")
