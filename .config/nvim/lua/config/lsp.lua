local opts = { noremap = true, silent = true }

require("lsp.lua")
require("lsp.python")
require("lsp.cpp")
require("lsp.rust")
require("lsp.bash")

vim.keymap.set('n', '<C-e>', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<C-q>', vim.diagnostic.setloclist, opts)

default_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gH', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', 'ga', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', 'grm', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', 'glf', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', 'gtd', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', 'grn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', 'gca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'grf', vim.lsp.buf.references, bufopts)
    vim.keymap.set("n", "gfm", function()
        vim.lsp.buf.format({ async = true })
    end, bufopts)
end

-- setup() is also available as an alias
require('lspkind').setup({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "󰉿",
      Method = "󰆧",
      Function = "󰊕",
      Constructor = "",
      Field = "󰜢",
      Variable = "󰀫",
      Class = "󰠱",
      Interface = "",
      Module = "",
      Property = "󰜢",
      Unit = "󰑭",
      Value = "󰎠",
      Enum = "",
      Keyword = "󰌋",
      Snippet = "",
      Color = "󰏘",
      File = "󰈙",
      Reference = "󰈇",
      Folder = "󰉋",
      EnumMember = "",
      Constant = "󰏿",
      Struct = "󰙅",
      Event = "",
      Operator = "󰆕",
      TypeParameter = "",
    },
})
