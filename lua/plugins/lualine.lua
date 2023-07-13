return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',

  config = function()
    local theme = require("lualine.themes.rose-pine")
    local rosepine = require('rose-pine.palette')
    local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }

    for _, mode in ipairs(modes) do
      theme[mode].c.bg = rosepine.love;
      theme[mode].c.fg = rosepine.text;
    end

    require('lualine').setup({
      options = {
        theme = theme, -- this will act as a separator on horizontal splits
      },

      sections = {
        -- left side
        lualine_a = { 'mode', },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { {
          'filename',
          path = 1,
          color = { gui = 'italic', },
        } },

        --right side
        lualine_x = { 'searchcount' },
        lualine_y = { 'diagnostics' },
        lualine_z = { 'location' }
      }
    })
  end

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
