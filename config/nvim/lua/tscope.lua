local telescope = require("telescope")
telescope.setup();
telescope.load_extension("fzf")

vim.keymap.set('n', '<Leader>ls', "<cmd>Telescope buffers<cr>")
vim.keymap.set('n', '<Leader>f', "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>g", "<cmd>Telescope live_grep<cr>")
