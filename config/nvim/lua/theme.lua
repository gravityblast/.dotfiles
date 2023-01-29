local themes = {
  "catppuccin-mocha",
  "catppuccin-macchiato",
  "catppuccin-frappe",
  "catppuccin-latte",
}

local ti = #themes - 1

function NextTheme()
  ti = (ti + 1) % #themes
  vim.cmd("colorscheme " .. themes[ti + 1])
end

function Light()
  vim.cmd("colorscheme catppuccin-frappe")
end

function Dark()
  vim.cmd("colorscheme catppuccin")
end

function SetColorSchemeBasedOnTime()
  local hr = os.date("*t")["hour"]
  if hr <= 6 or hr >= 20 then
    Dark()
  else
    Light()
  end
end

-- SetColorSchemeBasedOnTime()
NextTheme()

vim.keymap.set("n", "<Leader>c", ":lua NextTheme()<CR>")


require 'lualine'.setup({
  options = {
    theme = 'catppuccin',
  },
})

vim.opt.termguicolors = true
require("bufferline").setup {}
require("scope").setup()
