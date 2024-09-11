local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.bashls.setup({
  on_attach = default_attach,
	cpabilities = capabilities
})
