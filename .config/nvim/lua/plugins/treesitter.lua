return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "p00f/nvim-ts-rainbow",
    },
    build = ":TSUpdate",
		lazy = true,
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "lua", "cpp", "python", "bash", "rust" },
        -- ensure_installed = {
        --   "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java"
        -- },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        },
      })
    end
  },
}
