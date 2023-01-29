vim.cmd([[
  imap <expr> <C-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-space>'
  smap <expr> <C-space>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-space>'

  imap <expr> <C-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-space>'
  smap <expr> <C-space>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-space>'

  imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
  smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
  imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
  smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
]])
