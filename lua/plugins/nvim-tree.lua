return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },

  config = function()
    -- change color for arrows in tree to light blue
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
        highlight_git = true, -- to highlight file that has changes or errors
        icons = {
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
        ignore = false,
      }
    }
  end,

  keys = {
    { '<leader>e', ':NvimTreeFindFileToggle<cr>', desc = 'Open Nvim Tree' }
  }
}
