return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    {'nvim-tree/nvim-web-devicons', lazy = true},
  },
  config = function()
    require('nvim-tree').setup {}
  end,

  keys = {
    {'<c-n>', ':NvimTreeFindFileToggle<cr>', desc = 'Open Nvim Tree'}
  }
}