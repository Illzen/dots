return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
        }
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "clangd",
          "pyright",
					"bashls"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
	{
		"onsails/lspkind.nvim",
	},
	-- {
	-- 	"hinell/lsp-timeout.nvim",
	-- 	dependencies={ "neovim/nvim-lspconfig" },
  -- },
	-- {
	-- 	'nvimdev/lspsaga.nvim',
	-- 	dependencies = {
  --       'nvim-treesitter/nvim-treesitter', -- optional
  --       'nvim-tree/nvim-web-devicons',     -- optional
  --   }
	-- }
}

