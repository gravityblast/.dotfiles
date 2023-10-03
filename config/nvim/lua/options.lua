vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.o.showcmd = true -- display incomplete commands
vim.o.encoding = "utf-8"
vim.o.mouse = "nvi"
vim.o.tabstop = 2
vim.o.shiftwidth = 2 -- a tab is two spaces
vim.o.expandtab = true -- use spaces, not tabs
vim.o.backspace = "indent,eol,start" -- backspace through everything in insert mode
vim.o.listchars = 'space:_,tab:>~,trail:·'
vim.o.termguicolors = true

vim.o.wrap = false
vim.o.scrolloff = 5 -- scrolling

-- files
-- backups and swapfiles
vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.nvim/undo"

vim.cmd("syntax enable")

-- Omni completion
-- turns on "detection", "plugin" and "indent"
vim.cmd("filetype plugin indent on")
vim.opt.omnifunc = "syntaxcomplete#Complete"
-- vim.opt.completeopt = "menuone,noselect"
-- set complete-=i
vim.cmd("autocmd CompleteDone * pclose")

vim.cmd("set list listchars=trail:·,tab:>-")

-- Copy selection to clipboard
vim.opt.clipboard:append("unnamedplus")

-- Searching
vim.o.hlsearch = true -- highlight matches
vim.o.incsearch = true -- incremental searching
vim.o.ignorecase = true -- searches are case insensitive...
vim.o.smartcase = true -- " ... unless they contain at least one capital letter

vim.cmd("let $NVIM_TUI_ENABLE_TRUE_COLOR=1")

-- code folding
vim.opt.foldenable = false
-- vim.o.foldcolumn = '1'
-- vim.o.foldlevel = 99
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
-- vim.o.foldmethod = "expr"
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false
-- vim.o.statuscolumn = "%=%l%s%C"
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]





--- gui
vim.o.ruler = true
vim.o.cursorline = true
vim.o.number = true
vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.opt.wildignore:append("*/target/*,*/tmp/*,*.so,*.swp,*.zip,*/coverage/*,*/vcr_cassettes/*,Godeps/_workspace/,*/node_modules/*,*/deps/*")

vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 100

-- always show the status line
vim.o.laststatus = 2
