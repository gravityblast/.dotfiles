-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local lazy_commit = "6fdd904ee45b66d933c5d2f72bcec337e13744f8"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  print("Cloning lazy.nvim...")
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end

  print("Checking out lazy commit...")
  local cur_dir = vim.fn.getcwd()
  vim.fn.chdir(lazypath)
  out = vim.fn.system({ "git", "checkout", lazy_commit })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to checkout lazy commit:\n", "ErrorMsg" },
      { out,                                 "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  spec = {
    { import = "plugins" },
  },


  rocks = {
    enabled = false
  }
})
