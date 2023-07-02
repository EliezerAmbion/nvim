-- pop up window will show instead typing in cmdline
return {
  'stevearc/dressing.nvim',
  lazy = true,
  opts = {
    input = {
      enabled = true,
      title_pos = 'left',
      start_in_insert = true,

      -- Set to `false` to disable
      mappings = {
        n = {
          ['<Esc>'] = 'Close',
          ['<cr>'] = 'Confirm',
        },
        i = {
          ['<Esc>'] = 'Close',
          ['<cr>'] = 'Confirm',
          ['<C-k>'] = 'HistoryPrev',
          ['<C-j>'] = 'HistoryNext',
        },
      },
    }
  },
}