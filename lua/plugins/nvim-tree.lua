return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },

  config = function()
    -- change color for arrows and indents
    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
    -- vim.cmd([[ highlight NvimTreeCursorLine  guifg=#3FC5FF ]])

    require('nvim-tree').setup {
      update_focused_file = { enable = true },

      view = {
        adaptive_size = true,
        centralize_selection = true,
        number = true,
        relativenumber = false,
      },

      renderer = {
        highlight_git = true, -- to highlight files that have changes or errors
        indent_markers = {
          enable = true,      -- indent line
        },
        icons = {
          git_placement = 'signcolumn',
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },

      -- disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          quit_on_open = true,
          resize_window = true,
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false, -- show files in .gitignore
      }
    }
  end,

  keys = {
    { '<leader>e', ':NvimTreeFindFileToggle<cr>', desc = 'Open Nvim Tree' }
  }
}
