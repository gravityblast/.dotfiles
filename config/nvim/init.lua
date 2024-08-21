require "options"
require "lazy_setup"
require "mappings"
require "auto"
require "lsp"
require "tscope"
require "theme"
require "languages"
require "snippets"

require "symbols-outline".setup()
require "nvim-tree".setup {
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    indent_width = 4,
  },
}
