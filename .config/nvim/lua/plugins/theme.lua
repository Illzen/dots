return {
	{
  	-- the colorscheme should be available when starting Neovim
    "folke/tokyonight.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
		opts = {
			style = "moon"
		},
	},
	{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
	},
}
