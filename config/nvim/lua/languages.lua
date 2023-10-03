-- go
vim.cmd([[
  autocmd Filetype go setlocal noexpandtab
  autocmd Filetype go setlocal nolist

  let g:go_fmt_command = "goimports"
  let g:go_highlight_structs = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
]])

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require('go.format').goimport()
  end,
  group = format_sync_grp,
})


-- Solidity
vim.cmd([[
  au Filetype solidity set tabstop=4 softtabstop=4 shiftwidth=4
]])
