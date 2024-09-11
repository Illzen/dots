local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup({
  on_attach = default_attach,
	cpabilities = capabilities
})
