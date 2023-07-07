return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', lazy = true },
  },
  config = function()
    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    require('nvim-tree').setup {
      -- disable window_picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    }
  end,

  keys = {
    { '<c-n>', ':NvimTreeFindFileToggle<cr>', desc = 'Open Nvim Tree' }
  }
}
