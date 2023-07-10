-- pop up window will show instead typing in cmdline
return {
  'stevearc/dressing.nvim',
  lazy = true, -- flutter-tools will load this

  opts = {
    input = {
      enabled = true,
      title_pos = 'left',
      start_in_insert = true,

      -- When true, <Esc> will close the modal
      insert_only = true,

      -- Set to `false` to disable
      mappings = {
        --- @NOTE: normal mode commented bcuz insert_only is true
        --[[ n = {
          ['<Esc>'] = 'Close',
          ['<cr>'] = 'Confirm',
        }, ]]

        i = {
          --['<Esc>'] = 'Close',
          ['<cr>'] = 'Confirm',
          ['<C-k>'] = 'HistoryPrev',
          ['<C-j>'] = 'HistoryNext',
          ['<C-c>'] = false, -- disable <C-c> for close
        },
      },
    }
  },
}
