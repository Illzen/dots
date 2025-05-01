-- 主题
vim.cmd([[colorscheme tokyonight]])
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- 缩进
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
-- vim.opt.softtabstop = 2

-- 显示缩进
vim.opt.list = false
--vim.opt.listchars = "tab:--,trail:_,nbsp:+"
vim.opt.listchars = "trail:_"

-- 复制上一行缩进
vim.opt.autoindent = true

vim.opt.shiftround = true
vim.opt.smartindent = true

-- always show tabline
vim.opt.showtabline = 2

-- 使用增强状态栏后是否需要 vim 的模式提示
vim.opt.showmode = false

-- 命令行高，提供足够的显示空间
vim.o.cmdheight = 1

-- 行号
vim.opt.number = true
vim.opt.relativenumber = true

-- 搜索大小写判断
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 光标行
vim.opt.cursorline = true

-- 启用鼠标
vim.opt.mouse:append("a")

--剪贴板
vim.opt.clipboard:append("unnamedplus")

-- 自动截断
vim.opt.wrap = true


-- 补全增强
vim.opt.wildmenu = true
