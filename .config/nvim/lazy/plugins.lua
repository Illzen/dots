require('lazy').setup( {
	{
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

	{
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}
    end,
  },	
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
  },
} )

