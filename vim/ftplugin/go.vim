map <Leader>rt :wa<CR> :GolangTestFocused<CR>
map <Leader>ra :wa<CR> :GolangTestCurrentPackage<CR>
map grun :w <CR>:call VimuxRunCommand("go run " . @%)<CR>
let g:go_fmt_command = "goimports"
