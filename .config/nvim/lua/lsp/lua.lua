local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup({
  on_attach = default_attach,
	cpabilities = capabilities
})
