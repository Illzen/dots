-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

-- Setup lazy.nvim
require("lazy").setup({
	require("lazy").setup({
		spec = {
			-- import your plugins
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "luvit-meta/library", words = { "vim%.uv" } },
					},
				},
			},

			{
				"vhyrro/luarocks.nvim",
				priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
				config = true,
			},

			{
				"folke/which-key.nvim",
			},

			{
				"dstein64/vim-startuptime",
				-- lazy-load on a command
				cmd = "StartupTime",
				-- init is called during startup. Configuration for vim plugins typically should be set in an init function
				init = function()
					vim.g.startuptime_tries = 10
				end,
			},

			{ import = "plugins" },
		},
		-- Configure any other settings here. See the documentation for more details.
		-- colorscheme that will be used when installing plugins.
		install = { },
		-- automatically check for plugin updates
		checker = { enabled = true },
	})
})
