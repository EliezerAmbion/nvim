return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',

  keys = {
    { '<C-p>',  '<cmd>BufferLineCyclePrev<cr>', desc = 'BufferLine Prev Tab' },
    { '<C-n>',  '<cmd>BufferLineCycleNext<cr>', desc = 'BufferLine Next Tab' },
    { '<Tab>p', '<cmd>BufferLineMovePrev<cr>',  desc = 'BufferLine Move Prev Tab' },
    { '<Tab>n', '<cmd>BufferLineMoveNext<cr>',  desc = 'BufferLine Move Next Tab' },
  },

  config = function()
    require('bufferline').setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File System",
            text_align = "center",
            --highlight = 'Directory',
            separator = true,
          },
          --- @TODO: make this work
          {
            filetype = 'undotree',
            text = 'Undo Tree',
            text_align = 'center',
            separator = true,
          }
        },
        hover = {
          enabled = true,
          delay = 0,
          reveal = { 'close' }
        },
        indicator = {
          style = 'underline',
        },

        diagnostics = 'nvim_lsp',
        separator_style = 'slope',
        numbers = 'ordinal',

        color_icons = true,
      }
    })
  end
}
