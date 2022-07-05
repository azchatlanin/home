local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then
  return
end

local config_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  open_on_setup = false,
  filters = {
    dotfiles = false,
    custom = {},
  },
  disable_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  hijack_netrw = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          --symlink = "",
          symlink = "",
          symlink_open = "",
        },
      },
    },
  },
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 40,
    height = 30,
    hide_root_folder = false,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
}
