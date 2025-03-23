-- 前缀键

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
	noremap = true,
	silent = true
}

-- 移动

vim.keymap.set("n", "<C-u>", "8k", opt)
vim.keymap.set("n", "<C-d>", "8j", opt)
-- 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opt)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opt)

-- 杂项
-- 加载配置
vim.keymap.set("n", "<C-r>", ":source ~/.config/nvim/init.lua<CR>", opt)

-- 保存
vim.keymap.set("n", "<C-s>", ":w<CR>", opt)
-- 关闭窗口
vim.keymap.set("n", "qq", "<C-w>c", opt)

-- 取消高亮
vim.keymap.set("n", "<leader>/", ":nohl<CR>", opt)

-- 插件

-- Lazy

vim.keymap.set("n", "<leader>L", ":Lazy<CR>", opt)

-- Mason

vim.keymap.set("n", "<leader>M", ":Mason<CR>", opt)

-- TreeSitter

vim.keymap.set("n", "<leader>T", ":TSInstall<CR>", opt)

-- Telescope

vim.keymap.set("n", "<C-f>", ":Telescope find_files <CR>", opt)
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep <CR>", opt)
-- vim.keymap.set("n", "<leader>fb", ":Telescope buffers <CR>", opt)
-- vim.keymap.set("n", "<leader>fh", ":Telescope help_tags <CR>", opt)


-- Neotree

vim.keymap.set("n", "<C-n>", ":Neotree left<CR>", opt)
vim.keymap.set("n", "<leader>n", ":Neotree left<CR>", opt)

-- Formatter

-- vim.keymap.set("n", "<C-m>", ":Format<CR>", opt)
-- vim.keymap.set("n", "<tab>f", ":Format<CR>", opt)
-- vim.keymap.set("n", "<tab>F", ":FormatWrite<CR>", opt)

-- Dap



-- 窗口

-- 纵向切割
vim.keymap.set("n", "<leader>s", "<C-w>s", opt)
-- 横向切割
vim.keymap.set("n", "<leader>v", "<C-w>v", opt)
-- 关闭窗口
-- 分屏跳转
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<leader>h", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<leader>j", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
vim.keymap.set("n", "<leader>k", "<C-w>k", opt)
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)
vim.keymap.set("n", "<leader>l", "<C-w>l", opt)

vim.keymap.set("n", "<leader>-", "<C-w>-", opt)
vim.keymap.set("n", "<C-->", "<C-w>-", opt)
vim.keymap.set("n", "<leader>=", "<C-w>+", opt)
vim.keymap.set("n", "<C-=>", "<C-w>+", opt)

vim.keymap.set("n", "<C-w><", "10<C-w><", opt)
vim.keymap.set("n", "<C-w>>", "10<C-w>>", opt)
vim.keymap.set("n", "<C-w>,", "10<C-w><", opt)
vim.keymap.set("n", "<C-w>.", "10<C-w>>", opt)
vim.keymap.set("n", "<leader><", "10<C-w><", opt)
vim.keymap.set("n", "<leader>>", "10<C-w>>", opt)
vim.keymap.set("n", "<leader>,", "10<C-w><", opt)
vim.keymap.set("n", "<leader>.", "10<C-w>>", opt)

-- 页面

vim.keymap.set("n", "<Tab><Tab>", ":tabnew<CR>", opt)
vim.keymap.set("n", "<Tab>q", ":tabclose<CR>", opt)
vim.keymap.set("n", "<C-Tab>", ":tabnext<CR>", opt)
vim.keymap.set("n", "<C-S-Tab>", ":tabprevious<CR>", opt)

