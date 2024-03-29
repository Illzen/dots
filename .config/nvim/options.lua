-- UTF-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 高亮所在行
-- vim.wo.cursorline = true

-- 显示左侧图标指示列
-- vim.wo.signcolumn = "yes"

-- 缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.shiftround = true

-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 使用增强状态栏后不再需要 vim 的模式提示
vim.o.showmode = true

-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false

-- 鼠标支持
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 不可见字符的显示，这里只把空格显示为一个点
-- vim.o.list = true
-- vim.o.listchars = "space:."

-- 补全增强
vim.o.wildmenu = true

-- always show tabline
vim.o.showtabline = 2

-- 剪贴板
vim.opt.clipboard = 'unnamedplus' -- use system clipboard
