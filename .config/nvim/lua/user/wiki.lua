-- wiki path
--vim.g.vimwiki_list = [{ 'path': '/mnt/store/Store.Disk/Notes' }]
vim.api.nvim_exec(
[[
let g:vimwiki_list = [{ 'path': '/mnt/store/Store.Disk/Notes' }]
]],
true)
