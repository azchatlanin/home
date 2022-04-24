local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"                                   -- Have packer manage itself
  use "nvim-lua/popup.nvim"                                      -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"                                    -- Useful lua functions used ny lots of plugins

  use "lunarvim/colorschemes"                                    -- A bunch of colorschemes you can try out

  use "kyazdani42/nvim-web-devicons"                             -- tree file icons
  use "kyazdani42/nvim-tree.lua"                                 -- tree file

  -- use "xolox/vim-session"                                        -- session
  -- use "xolox/vim-misc"

  use "nvim-telescope/telescope.nvim"                            -- Telescope

  use {                                                          -- Treesitter. This is higjlight
   "nvim-treesitter/nvim-treesitter",
   run = ":TSUpdate",
  }
  use "romgrk/nvim-treesitter-context"
  use "tree-sitter/tree-sitter-julia"

  --use "azchatlanin/vim-cpp-modern"

  use "907th/vim-auto-save"                                      -- auto-savea
  use "vimwiki/vimwiki"                                          -- wiki
  use "stfl/meson.vim"                                           -- meson

  use "numToStr/Comment.nvim"                                    -- Easily comment stuff

  use "moll/vim-bbye"                                            -- close buffer

  use "lukas-reineke/indent-blankline.nvim"                      -- added vertical lines boarder in the code

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                                         -- The completion plugin
  use "hrsh7th/cmp-buffer"                                       -- buffer completions
  use "hrsh7th/cmp-path"                                         -- path completions
  use "hrsh7th/cmp-cmdline"                                      -- cmdline completions
  --use "saadparwaiz1/cmp_luasnip"                                 -- snippet completions
  use "azchatlanin/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip"                                         -- snippet engine
  use "rafamadriz/friendly-snippets"                             -- a bunch of snippets to use
  use "honza/vim-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"                                    -- enable LSP
  use "williamboman/nvim-lsp-installer"                          -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim"                             -- language server settings defined in json for

  use "phaazon/hop.nvim"                                         -- fast search

  use "norcalli/nvim-colorizer.lua"                              -- color show #fffddd

  use "stfl/meson.vim"                                           -- meson
  use "karb94/neoscroll.nvim"                                    -- good scrool

  -- starup screen
  use "azchatlanin/alpha-nvim"
  -- use {
  --   "azchatlanin/dashboard.nvim",
  --   requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  --   config = function()
  --     require"startup".setup(require"user.startup_screen")
  --   end
  -- }
  use "metakirby5/codi.vim"                                      -- show code result online
  use "akinsho/toggleterm.nvim"                                  -- toggle terminal
  use "akinsho/bufferline.nvim"                                  -- bufferline

  use "pechorin/any-jump.vim"

  use "mbbill/undotree"

  use "windwp/windline.nvim"

  use "tpope/vim-surround"                                       -- select word in ("[{ 

  use "posva/vim-vue"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
