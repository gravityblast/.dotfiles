local telescope = require("telescope")
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    file_ignore_patterns = { "deployments" },
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        width = 0.99,
        height = 0.99
      }
    },
  },
};

telescope.load_extension("fzf")

vim.keymap.set('n', '<leader>ls', builtin.buffers, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader> ', builtin.keymaps, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})
