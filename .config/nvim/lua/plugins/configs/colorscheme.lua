-- local colorscheme = "spacedark"
-- local colorscheme = "codemonkey"
local colorscheme = "onedarker"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- vim.api.nvim_exec(
-- [[
-- highlight Normal guibg=none
-- highlight NonText guibg=none
-- ]],
-- true)
