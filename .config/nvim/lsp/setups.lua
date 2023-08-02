
-- :h mason-default-settings
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "bashls",
    "clangd",
    "cmake",
    "dotls",
    "jsonls",
    "lua_ls",
    "marksman",
    "pyright",
    "rust_analyzer",
    "sqlls",
    "taplo",
    "vimls",
    "yamlls",
  },
})

require'lspconfig'.bashls.setup {}
require'lspconfig'.clangd.setup {}
require'lspconfig'.cmake.setup {}
require'lspconfig'.dotls.setup {}
require'lspconfig'.jsonls.setup {}
require'lspconfig'.lua_ls.setup {}
require'lspconfig'.marksman.setup {}
require'lspconfig'.pyright.setup {}
require'lspconfig'.rust_analyzer.setup {}
require'lspconfig'.sqlls.setup {}
require'lspconfig'.taplo.setup {}
require'lspconfig'.vimls.setup {}
require'lspconfig'.yamlls.setup {}
