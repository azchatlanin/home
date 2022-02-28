local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣴⡶⠶⠒⠛⠛⠛⠛⠒⠶⢶⣦⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⠞⠋⠉⠁⣀⠀⠀⠀⣴⣶⣦⡀⣠⣴⣦⠀⠈⠉⠙⠳⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⠉⠀⣀⠀⣀⣾⣿⣷⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣀⣴⡆⠀⠉⠻⣦⣀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⢠⡾⠋⠀⡀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣤⣷⠀⠀⠙⢷⡄⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⢀⣴⠟⠀⠀⠀⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠻⣦⡀⠀⠀⠀]],
  [[⠀⠀⢠⣾⠃⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⠿⣿⣟⠛⠉⢿⣿⢯⡛⠉⠛⠿⣿⣟⢿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠘⣷⡄⠀⠀]],
  [[⠀⠀⡾⠁⠀⠀⠀⠀⠀⣹⣿⣿⣿⡏⠀⠁⠀⠀⠀⠀⠀⠉⠁⠑⠀⠀⠀⠀⠀⠁⠙⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⢷⠀⠀]],
  [[⠀⣾⠃⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠘⣷⠀]],
  [[⢰⡟⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⡏⡀⠄⠚⠙⢄⠀⠀⠀⠀⠀⠀⠀⠀⡠⠋⡀⠓⠄⣿⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆]],
  [[⢸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇⠀⠐⢢⡐⢌⠑⡄⠀⠀⠀⠀⢀⠎⡡⣢⠕⠉⢰⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇]],
  [[⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⡎⠈⠢⢕⡈⠂⠀⠀⠲⢁⠲⠊⠉⡆⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿]],
  [[⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠃⠀⠀⡇⠰⠆⢸⣾⡀⠀⠀⢀⣿⠀⢰⠀⠀⠀⠀⠏⠒⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿]],
  [[⢸⡀⠀⠀⠀⠀⠀⠀⠀⡜⠀⣤⡃⠸⣭⣫⣉⡓⠾⠛⡃⠀⢀⠚⠻⢞⣋⣉⣯⠇⠸⡘⠉⢸⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇]],
  [[⠸⣧⠀⠀⠀⠀⠀⠀⠀⢇⠀⢁⡇⠀⠉⠉⠉⠉⠉⠉⡅⠀⠈⠉⠉⠉⠉⠉⠉⠀⠀⠓⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⣼⠇]],
  [[⠀⢿⡄⠀⠀⠀⠀⠀⠀⠀⠈⣴⠀⠀⠀⠀⠀⠀⠀⠐⢀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠈⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠀]],
  [[⠀⠀⢷⡀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠎⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⢀⡾⠀⠀]],
  [[⠀⠀⠘⢿⡄⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⢀⠤⠐⢋⡀⠸⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⢠⡿⠃⠀⠀]],
  [[⠀⠀⠀⠈⠻⣦⠀⠀⠀⠀⠈⡀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠁⠈⠁⠆⠀⠀⠀⠀⠀⠀⢀⠞⠀⠀⠀⠀⠀⣴⠟⠁⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠘⢷⣄⠀⠀⠀⠁⠠⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡤⠤⠒⠋⠀⠀⠀⠀⣠⡾⠃⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠉⠻⣦⣀⠀⠀⠀⠀⠀⠁⠀⢄⠀⠀⠀⠀⠀⠀⢀⠌⠀⠀⠀⠀⠀⠀⣀⣴⠟⠉⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⢦⣄⣀⡀⠀⠀⠀⠈⠠⠀⣀⡀⠄⠁⠀⠀⢀⣀⣠⡴⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠻⠷⠶⠤⣤⣤⣤⣤⠤⠶⠾⠟⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

dashboard.section.buttons.val = {
	dashboard.button(".",      "  Open current",                ":ene <CR>:NvimTreeFindFileToggle<CR>"),
	dashboard.button("r",      "  Recently used files",         ":Telescope oldfiles<CR>"),
	dashboard.button("ff",     "  Find file",                   ":Telescope find_files<CR>"),
	dashboard.button("t",      "  Find text",                   ":Telescope live_grep<CR>"),
	dashboard.button("update", "ﮮ  Plugins Update",              ":PackerSync<CR>"),
	dashboard.button("q",      "  Quit",                        ":qa<CR>"),
}

local header_dirs = {
  type = "text",
  val = {
    [[DIRECTORY]],
  },
  opts = {
    position = "center",
    hl = "Include",
    -- wrap = "overflow";
  },
}

local dirs = {
  type = "group",
  val = {
    dashboard.button("wiki",     "磌 Wiki",                     ":VimwikiIndex<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("home",     "  Home",                     ":e /home/chatlanin/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("sthome",   "  store/home",               ":e /mnt/store/home/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("st",       "  store",                    ":e /mnt/store/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("sd",       "  Store.Disk",               ":e /mnt/store/Store.Disk/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("app",      "ﬓ  application",              ":e /mnt/develop/application/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("bin",      "  bin",                      ":e /mnt/develop/bin/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("cpp",      "ﭱ  cpp",                      ":e /mnt/develop/projects/cpp/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("pr",       "  projects",                 ":e /mnt/develop/projects/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("dev",      "  develop",                  ":e /mnt/develop/README.md<CR>:NvimTreeFindFileToggle<CR>"),
  },
  opts = {
    spacing = 1,
  },
}

local header_projects = {
  type = "text",
  val = {
    [[PROJECTS]],
  },
  opts = {
    position = "center",
    hl = "Include",
    -- wrap = "overflow";
  },
}

local projects = {
  type = "group",
  val = {
    dashboard.button("conf",     "   Nvim config",            ":e /mnt/store/home/.config/nvim/init.lua<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("dwm",      "冷  dwm",                    ":e /mnt/develop/application/dwm/dwm.6.2/config.h<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("ft",       "冷  ftxui",                  ":e /mnt/develop/projects/cpp/ftxui/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("base",     "冷  base",                   ":e /mnt/develop/projects/cpp/base/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("kn",       "冷  knowledge",              ":e /mnt/develop/projects/cpp/knowledge/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("rrr",      "冷  rrr",                    ":e /mnt/develop/projects/cpp/rrr/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("emapi",    "冷  (dev) emuse.v2/api",     ":e /mnt/develop/projects/cpp/xaoslab/emuse.v2/api/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("emres",    "冷  (dev) emuse.v2/result",  ":e /mnt/develop/projects/cpp/xaoslab/emuse.v2/result/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("emtests",  "冷  (dev) emuse.v2/tests",   ":e /mnt/develop/projects/cpp/xaoslab/emuse.v2/tests/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("alpha",    "冷  nvim-alpha",             ":e /mnt/develop/projects/nvim/alpha-nvim/README.md<CR>:NvimTreeFindFileToggle<CR>"),
    dashboard.button("tools",    "冷  tools",                  ":e /mnt/develop/projects/cpp/tools/meson.build<CR>:NvimTreeFindFileToggle<CR>"),
  },
  opts = {
    spacing = 1,
  },
}

dashboard.section.header_projects = header_projects
dashboard.section.projects = projects
dashboard.section.header_dirs = header_dirs
dashboard.section.dirs = dirs

local function footer()
  return "chatlanin.com.ru"
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true

dashboard.opts.layout = {
  { type = "padding", val = 2 },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 1 },
  dashboard.section.header_dirs,
  { type = "padding", val = 1 },
  dashboard.section.dirs,
  { type = "padding", val = 1 },
  dashboard.section.header_projects,
  { type = "padding", val = 1 },
  dashboard.section.projects,
  { type = "padding", val = 2 },
  dashboard.section.footer,
}
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
