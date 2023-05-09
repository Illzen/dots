-- 前缀键
vim.g.mapleader = " "
vim.g.maploaclleader = " "


local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map("n", "<C-u>", "8k", opt)
map("n", "<C-d>", "8j", opt)

-- nvim-tree

map('n', '<leader>f', ':NvimTreeToggle<CR>', opt)
-- map('n', '<leader>f', ':NvimTreeFocus<CR>', opt)

-- 分屏

-- 纵向切割
map("n", "<leader>e", ":vsp<CR>", opt)
-- 横向切割
map("n", "<leader>v", ":sp<CR>", opt)
-- 关闭窗口
map("n", "<leader>q", "<C-w>c", opt)
-- 分屏跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- Lazy
map("n", "<leader>L", ":Lazy<CR>", opt)

-- Mason

map("n", "<leader>M", ":Mason<CR>", opt)

-- lsp相关

vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', 'gq', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
 vim.api.nvim_create_autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
   callback = function(ev)
-- Enable completion triggered by <c-x><c-o>
     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
-- Buffer local mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
  local opts = { buffer = ev.buf }
   vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
   vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
   vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
   vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workleader, opts)
   vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workleader, opts)
   vim.keymap.set('n', '<leader>wl', function()
     print(vim.inspect(vim.lsp.buf.list_workleader()))
   end, opts)
   vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
   vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
   vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
   vim.keymap.set('n', '<leader>ff', function()
     vim.lsp.buf.format { async = true }
   end, opts)
   end,
 })
