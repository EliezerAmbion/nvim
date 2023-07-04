return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  opts = {
    sections = {
      -- left side
      lualine_a = { 'mode', },
      lualine_b = { 'branch', 'diff' },
      lualine_c = { {
        'filename',
        path = 0,
        color = { gui = 'italic', },
      } },

      --right side
      lualine_x = { 'searchcount' },
      lualine_y = { 'diagnostics' },
      lualine_z = { 'location' }
    }
  }
}
