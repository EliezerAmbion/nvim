return {
  'tpope/vim-fugitive',
  lazy = false,

  keys = {
    { '<leader>Gs', '<cmd>Git<cr>',         desc = 'Open Fugitive' },
    { '<leader>Gv', '<cmd>Gvdiffsplit<cr>', desc = 'Vertical Split' },
  }
}
