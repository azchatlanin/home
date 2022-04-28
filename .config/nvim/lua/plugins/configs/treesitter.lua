local status_ok, ts_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

local default = {
  ensure_installed = {
    "lua",
    "vim",
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
}

ts_config.setup(default)
