-- 前缀键
vim.g.mapleader = " "
vim.g.maploaclleader = " "


local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-u>", "8k", opt)
map("n", "<C-d>", "8j", opt)

-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- 分屏
-- map("n", "<T-v>", ":vsp<CR>", opt)
-- map("n", "<T-e>", ":sp<CR>", opt)
-- map("n", "<T-q>", "<C-w>c", opt)

-- 分屏跳转
-- map("n", "<T-h>", "<C-w>h", opt)
-- map("n", "<T-j>", "<C-w>j", opt)
-- map("n", "<T-k>", "<C-w>k", opt)
-- map("n", "<T-l>", "<C-w>l", opt)
