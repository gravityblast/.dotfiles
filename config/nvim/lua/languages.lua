-- go
vim.cmd([[
  autocmd Filetype go setlocal noexpandtab
  autocmd Filetype go setlocal nolist
]])

-- local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.go",
--   callback = function()
--     require('go.format').goimport()
--   end,
--   group = format_sync_grp,
-- })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = { only = { "source.organizeImports" } }
    -- buf_request_sync defaults to a 1000ms timeout. Depending on your
    -- machine and codebase, you may want longer. Add an additional
    -- argument after params if you find that you have to write the file
    -- twice for changes to be saved.
    -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({ async = false })
  end
})

-- Solidity
vim.cmd([[
  au Filetype solidity set tabstop=4 softtabstop=4 shiftwidth=4
]])

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.sol",
  callback = function()
    local file_path = vim.fn.expand("%:p")
    local cmd = { "forge", "fmt", file_path }

    vim.fn.jobstart(cmd, {
      on_exit = function(_, return_val)
        if return_val == 0 then
          vim.cmd("edit!")
        else
          print("Error formatting file with forge fmt.")
        end
      end,
    })
  end
})
