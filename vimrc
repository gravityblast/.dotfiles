if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundle')
  call dein#begin('~/.vim/bundle')

  call dein#add('~/.vim/bundle/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('mileszs/ack.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-endwise')
  call dein#add('scrooloose/nerdtree')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('tpope/vim-surround')
  call dein#add('mattn/emmet-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('elixir-lang/vim-elixir')
  call dein#add('slashmili/alchemist.vim')
  call dein#add('pilu/snipmate.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
let mapleader=","
set encoding=utf-8
set showcmd                     " display incomplete commands
set mouse=nvi
set pastetoggle=<F4>
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode


let g:deoplete#enable_at_startup = 1

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

autocmd Filetype go setlocal noexpandtab
autocmd Filetype go setlocal nolist

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
set background=light
colorscheme solarized
"
" code folding
set nofoldenable

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

"" autcomplete
"set completeopt-=preview
"set complete-=i
"
" Nerdtree
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
"
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

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

let g:ctrlp_working_path_mode = 'w'

"" elm
"au FileType elm nmap <leader>m <Plug>(elm-make)
"au FileType elm nmap <leader>w <Plug>(elm-browse-docs)
"au FileType elm nmap <leader>d <Plug>(elm-show-docs)
"au FileType elm nmap <leader>e <Plug>(elm-error-detail)
"" au BufWritePost *.elm ElmMake
"au Filetype elm set tabstop=4 softtabstop=4 shiftwidth=4
"
"let g:elm_format_autosave = 1
"" au BufWritePost *.elm ElmMakeFile("Main.elm")


