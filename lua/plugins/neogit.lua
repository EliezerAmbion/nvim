return {
  'NeogitOrg/neogit',
  dependencies = {
    'sindrets/diffview.nvim',
    'nvim-lua/plenary.nvim'
  },

  keys = {
    { '<leader>Gs', function() require('neogit').open({ kind = 'vsplit' }) end, desc = 'Neogit Open in Vertical Split' },
    { '<leader>Go', function() require('neogit').open() end,                    desc = 'Neogit Open Tab' },
    { '<leader>Gl', '<cmd>Neogit log<cr>',                                      desc = 'Neogit Open Git Log' },

    --- @forDiffview
    { '<leader>Gv', '<cmd>DiffviewOpen<cr>',                                    desc = 'Diffview Open' },
    { '<leader>Gc', '<cmd>DiffviewClose<cr>',                                   desc = 'Diffview Open Master' },
    { '<leader>Gm', '<cmd>DiffviewOpen master<cr>',                             desc = 'Diffview Open Master' },
  },

  config = function()
    local neogit = require('neogit')

    neogit.setup {
      integrations = {
        diffview = true,
      }
    }
  end
}
