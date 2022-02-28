-- https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/keymaps.lua
-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c",

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)

keymap("c", "jk", "<ESC>", opts)
keymap("c", "kj", "<ESC>", opts)
keymap("c", "jj", "<ESC>", opts)
keymap("c", "kk", "<ESC>", opts)

--Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Nvim Tree
keymap("n", "<leader>n", ":NvimTreeFocus<CR>", opts)

-- снять выделение результата поиска
keymap("n", "<leader><ESC>", ":nohlsearch<CR><C-L>", opts)

-- go to wiki
keymap("n", "<leader>wiki", ":VimwikiIndex<CR>", opts)

-- hop search
keymap("n", "S", ":HopWord<CR>", { silent = true })
keymap("n", "<leader>S", ":Telescope live_grep<CR>", { silent = true })

-- wrapper in ""
keymap("n", "<leader>\"", "viw<esc>a\"<esc>bi\"<esc>lel", opts)

-- hellp popup
keymap("n", "<F1>", ":lua PluginKeymap.toggle()<CR>", opts)
keymap("n", "<F2>", ":lua NvimKeymap.toggle()<CR>", opts)

-- toggle terminal
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)

-- show error and warning diagnostic
keymap("n", "<leader>e", ":lua vim.diagnostic.goto_prev({ border = \"rounded\" })<CR>", opts)

-- show alpch
keymap("n", "<leader><TAB>", ":NvimTreeClose<CR>:Alpha<CR>", opts)

-- anyjump for code definition
keymap("n", "<leader>j", ":AnyJump<CR>", opts)
