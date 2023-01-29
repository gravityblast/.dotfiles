function renameCurrentFile()
  local old_name = vim.fn.expand('%')
  vim.ui.input({ prompt = 'New file name: ', default = vim.fn.expand('%') }, function(new_name)
    if new_name ~= nil and new_name ~= '' and new_name ~= old_name then
      vim.cmd(':saveas ' .. new_name)
      vim.cmd(':silent !rm ' .. old_name)
      vim.cmd(":redraw!")
    end
  end)
end

local set = vim.keymap.set

set({ 'n', 'v' }, '<Leader>n', '<Cmd>lua renameCurrentFile()<CR>')
set("n", "<CR>", ":nohlsearch<CR><CR>")

set("n", "tp", ":tabprev<CR>")
set("n", "tn", ":tabnext<CR>")
set("n", "tc", ":tabnew<CR>")
set("n", "td", ":tabclose<CR>")

set("n", "<F2>", ":NvimTreeToggle<CR>")
set("n", "R", ":NvimTreeRefresh<CR>")
set("n", "<F3>", ":SymbolsOutline<CR>")
set("n", "<C-p>", ":FZF<CR>")

vim.cmd([[command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)]])
