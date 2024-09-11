local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').rust_analyzer.setup({
	on_attach = default_attach,
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true
			},
		}
	},
	cpabilities = capabilities
})
