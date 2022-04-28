vim.api.nvim_exec(
[[
  autocmd BufRead,BufNewFile *.vue setfiletype html
]],
true)

vim.api.nvim_exec(
[[
  let g:vue_pre_processors = ['pug', 'scss']
]],
true)

