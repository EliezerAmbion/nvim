local custom_theme = require 'lualine.themes.nord'

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_theme,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  
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
  },
}

require('lualine').setup()
