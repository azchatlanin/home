local ok, packer = pcall(require, "plugins.packer")
if not ok then
  error("No load packer")
  return
end

return packer.startup(function(use)
  -- улучшает код lua и используеьтся во многи плагинах
  use "nvim-lua/plenary.nvim"

  -- ускоряет загрузку модулей Lua в Neovim, чтобы сократить время запуска
  use "lewis6991/impatient.nvim"


  -- ускоряет запуск neovim
  use "nathom/filetype.nvim"

  -- packer manager
  use "wbthomason/packer.nvim"

  -- popup api
  use "nvim-lua/popup.nvim"

  -- show color: Blue, Red, Yellow, Green, Pink
  use "norcalli/nvim-colorizer.lua"

  -- tree file icons
  use "kyazdani42/nvim-web-devicons"

  -- tree files
  use "kyazdani42/nvim-tree.lua"

  -- auto-savea
  use "907th/vim-auto-save"

  -- wiki
  use "vimwiki/vimwiki"

  -- meson
  use "stfl/meson.vim"

  -- easily comment stuff
  use "numToStr/Comment.nvim"

  -- vue sintacsis
  use "posva/vim-vue"

  -- заключить текущее слово в ("[{
  use "tpope/vim-surround"

  -- история изменений в файле
  use "mbbill/undotree"

  -- плагин проверки кода Vim для поиска определений
  use "pechorin/any-jump.vim"

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- toggle terminal
  use "akinsho/toggleterm.nvim"

  -- starup screen
  use "azchatlanin/alpha-nvim"

  -- позволяет удалять буферы (закрывать файлы), не закрывая окна и не портя макет.
  use "moll/vim-bbye"

  -- плагин добавляет направляющие отступов ко всем строкам (включая пустые строки)
  use "lukas-reineke/indent-blankline.nvim"

  -- позволяющий вам перемещаться в любом месте документа с минимальным количеством нажатий клавиш.
  use "phaazon/hop.nvim"

  -- плагин neovim с плавной прокруткой
  use "karb94/neoscroll.nvim"

  -- плагин автодополнения для neovim, написанный на Lua.
  -- Исходники автодополнения устанавливаются из внешних репозиториев и являются «источниками».
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "honza/vim-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "tamago324/nlsp-settings.nvim"

  -- status line
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- colorscheme
  -- use "lunarvim/colorschemes"
  use "azchatlanin/colorschemes"

  -- autopairs
  use "windwp/nvim-autopairs"

  -- search
  use "nvim-telescope/telescope.nvim"

  --use "romgrk/nvim-treesitter-context"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- use "azchatlanin/vim-cpp-modern"
  -- use "saadparwaiz1/cmp_luasnip"
  -- use "azchatlanin/cmp-nvim-lsp"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
