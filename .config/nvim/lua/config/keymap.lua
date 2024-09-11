-- 前缀键

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- 移动

-- map("n", "<C-u>", "8k", opt)
-- map("n", "<C-d>", "8j", opt)
-- 
map("v", "J", ":m '>+1<CR>gv=gv", opt)
map("v", "K", ":m '<-2<CR>gv=gv", opt)

-- 杂项

-- 保存
map("n", "<C-s>", ":w<CR>", opt)
-- 关闭窗口
map("n", "qq", "<C-w>c", opt)

-- 取消高亮
map("n", "<leader>/", ":nohl<CR>", opt)

-- 插件

-- Lazy

map("n", "<leader>L", ":Lazy<CR>", opt)

-- Mason

map("n", "<leader>M", ":Mason<CR>", opt)

-- TreeSitter

map("n", "<leader>T", ":TSInstall<CR>", opt)

-- Telescope

map("n", "<C-f>", ":Telescope find_files <CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep <CR>", opt)
map("n", "<leader>fb", ":Telescope buffers <CR>", opt)
map("n", "<leader>fh", ":Telescope help_tags <CR>", opt)


-- Neotree

map("n", "<C-n>", ":Neotree left<CR>", opt)
map("n", "<leader>n", ":Neotree left<CR>", opt)
--map("n", "<leader>nr", ":Neotree right<CR>", opt)
--map("n", "<leader>nt", ":Neotree top<CR>", opt)
--map("n", "<leader>nb", ":Neotree bottom<CR> ", opt)

-- Formatter

map("n", "<C-m>", ":Format<CR>", opt)
-- map("n", "<tab>f", ":Format<CR>", opt)
-- map("n", "<tab>F", ":FormatWrite<CR>", opt)

-- Dap



-- 窗口

-- 纵向切割
map("n", "<leader>s", "<C-w>s", opt)
-- 横向切割
map("n", "<leader>v", "<C-w>v", opt)
-- 关闭窗口
-- 分屏跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

map("n", "<leader>-", "<C-w>-", opt)
map("n", "<leader>=", "<C-w>+", opt)
map("n", "<leader>+", "<C-w>+", opt)

map("n", "<C-w><", "10<C-w><", opt)
map("n", "<C-w>>", "10<C-w>>", opt)
map("n", "<C-w>,", "10<C-w><", opt)
map("n", "<C-w>.", "10<C-w>>", opt)
map("n", "<leader><", "10<C-w><", opt)
map("n", "<leader>>", "10<C-w>>", opt)
map("n", "<leader>,", "10<C-w><", opt)
map("n", "<leader>.", "10<C-w>>", opt)

-- 页面

map("n", "<Tab><Tab>", ":tabnew<CR>", opt)
map("n", "<Tab>q", ":tabclose<CR>", opt)
-- map("n", "<Tab>n", ":tabnext<CR>", opt)
map("n", "<Ctrl><Tab>", ":tabnext<CR>", opt)
map("n", "<Tab>p", ":tabprevious<CR>", opt)

