return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',

  config = function()
    --- @NOTE: if you want to change the color of c ie c.bg and c.fg
    --- @NOTE: uncomment below and use options.theme = theme

    --[[ local theme = require("lualine.themes.rose-pine")
    local rosepine = require('rose-pine.palette')
    local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }

    for _, mode in ipairs(modes) do
      theme[mode].c.bg = rosepine.pine;
      theme[mode].c.fg = rosepine.text;
    end ]]

    require('lualine').setup({
      options = {
        --theme = theme, -- this will act as separator on horizontal splits if globalstatus is false
        globalstatus = true,
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
        lualine_x = { 'searchcount', 'selectioncount', },
        lualine_y = { 'diagnostics' },
        lualine_z = { 'location' }
      }
    })
  end

  --- @THEME2 nightfly
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
