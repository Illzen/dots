return {
	{
		'nvimdev/lspsaga.nvim',
		opts = {},
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
	},
	{
    "williamboman/mason.nvim",
		opts = {
			ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
					lua_ls = {
							Lua = {
									workspace = { checkThirdParty = false },
									telemetry = { enable = false },
							},
					},
					rust_analyzer = {},
					pyright = {},
					jsonls = {},
					marksman = {},
					dockerls = {},
					docker_compose_language_service = {},
					bashls = {},
			}
		}
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("config.lsp")
		end
	}
}

