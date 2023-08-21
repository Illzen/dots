require('lazy').setup( {
	{
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    },
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
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
  },

  {
    "neovim/nvim-lspconfig",
  },

  {
    "mhartington/formatter.nvim",
  },

  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/cmp-cmdline"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/cmp-vsnip"
  },

} )

