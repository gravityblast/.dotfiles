require("mason").setup()
require("mason-lspconfig").setup()

require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua", "go", "rust", "vim", "solidity",
    "css", "html", "javascript", "typescript",
    "tsx", "clojure", "json", "yaml", "bash"
  },

  sync_install = true,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local lsp_formatting = function(bufnr)
  if not vim.g.disable_formatting then
    vim.lsp.buf.format({
      filter = function(client)
        return client.name ~= "tsserver" and
            client.name ~= "solidity"
      end,
      bufnr = bufnr,
    })
  end
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', '<Leader>h', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gr', "<cmd>Telescope lsp_references<cr>", bufopts)
  vim.keymap.set('n', '<Leader>d', function() vim.diagnostic.open_float({ border = "double" }, { focus = false }) end,
    bufopts);

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "double",
})

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.forge_fmt,
  }
})

local lsp = require("lspconfig");
local configs = require('lspconfig.configs')

lsp.gopls.setup { on_attach = on_attach }
lsp.tsserver.setup { on_attach = on_attach }
lsp.rust_analyzer.setup { on_attach = on_attach }

lsp.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  on_attach = on_attach
}

lsp.elixirls.setup {
  cmd = { vim.fn.expand("$HOME/bin/elixir-ls/language_server.sh") },
  on_attach = on_attach
}

configs.solidity = {
  default_config = {
    cmd = { 'nomicfoundation-solidity-language-server', '--stdio' },
    filetypes = { 'solidity' },
    root_dir = lsp.util.find_git_ancestor,
    single_file_support = true,
  },
}

lsp.solidity.setup { on_attach = on_attach }

lsp.pylsp.setup { on_attach = on_attach }


lsp.nim_langserver.setup {
  settings = {
    nim = {
      nimsuggestPath = "/opt/homebrew/bin/nimsuggest"
    }
  }
}

lsp.cvl.setup { on_attach = on_attach }
