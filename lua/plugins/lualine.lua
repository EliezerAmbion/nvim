return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',

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
  },

  -- NOTE: uncomment to tweak colors and I like rose pine colorshceme for now.
  --[[ config = function()
    local lualine_nightfly = require("lualine.themes.nightfly")

    -- new colors for theme
    local new_colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      black = "#000000",
    }

    -- change nightlfy theme colors
    --lualine_nightfly.normal.a.bg = new_colors.blue
    lualine_nightfly.insert.a.bg = new_colors.green
    lualine_nightfly.visual.a.bg = new_colors.violet
    lualine_nightfly.command = {
      a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black, -- black
      },
    }

    require('lualine').setup {
      options = {
        theme = lualine_nightfly
      }
    }
  end ]]
}
