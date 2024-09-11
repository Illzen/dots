return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      local telescope = require("telescope")
      local telescopeConfig = require("telescope.config")
      
      -- Clone the default Telescope configuration
      local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
      
      -- I want to search in hidden/dot files.
      table.insert(vimgrep_arguments, "--hidden")
      -- I don't want to search in the `.git` directory.
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!(**/.git/*|**/node_modules/*)")
      --table.insert(vimgrep_arguments, "!**/node_modules/*")

      require("telescope").setup({
        defaults = {
          vimgrep_arguments = {
            -- `hidden = true` is not supported in text grep commands.
            vimgrep_arguments = vimgrep_arguments,
          },
        },
        pickers = {
          find_files = {
            find_command = {
              "rg",
              "--files",
              "--hidden",
              "--glob",
              --"!**/.git/*",
              "!(**/.git/* | **/node_modules/*)"
              --"!**/node_modules/*"
            },
            mappings = {
              n = {
                ["cd"] = function(prompt_bufnr)
                  local selection = require("telescope.actions.state").get_selected_entry()
                  local dir = vim.fn.fnamemodify(selection.path, ":p:h")
                  require("telescope.actions").close(prompt_bufnr)
                  -- Depending on what you want put `cd`, `lcd`, `tcd`
                  vim.cmd(string.format("silent lcd %s", dir))
                end
              }
            }
          },
        },
      })
    end,
  },
  {
  "nvim-telescope/telescope-ui-select.nvim",
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
    })
  require("telescope").load_extension("ui-select")
    end,
  },
}
