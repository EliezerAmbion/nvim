return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,

  config = function()
    local G = require('config.globals').rosepine()

    require('rose-pine').setup({
      -- @usage 'auto'|'main'|'moon'|'dawn'
      -- variant = 'moon',
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = 'main',
      -- bold_vert_split = true,
      dim_nc_background = true, --- @TODO: what is this?
      disable_background = false,
      disable_float_background = false,
      disable_italics = false,

      --- @usage string hex value or named color from rosepinetheme.com/palette
      groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'base',
        panel_nc = 'base',
        border = G.border,
        comment = 'subtle', -- muted: more darker shade
        link = 'iris',
        punctuation = 'subtle',

        error = 'rose',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',
      },

      -- Change specific vim highlight groups
      -- https://github.com/rose-pine/neovim/wiki/Recipes
      highlight_groups = {
        Search = { bg = G.border, fg = G.fgDark },
        -- Comment = { fg = 'muted' },

        -- Telescope
        TelescopeSelection = { fg = G.fg, bg = G.bg, blend = 30 },
        TelescopeSelectionCaret = { fg = G.border, },

        -- Indent Blankline
        IndentBlanklineContextChar = {
          fg = G.border,
        },

        -- Blend colours against the "base" background
        CursorLine = { bg = G.bg, blend = 30 },
        -- StatusLine = { fg = 'text', bg = 'love', blend = 60 },
        -- ColorColumn = { bg = 'pine' },
      }

    })

    vim.cmd('colorscheme rose-pine')
  end
}

-- NOTE: use this if you are tired of rose pine
--[[ return {
  'bluz71/vim-nightfly-colors',
  name = 'nightfly',
  lazy = false,
  priority = 1000,

  init = function()
    -- Lua initialization file
    vim.g.nightflyCursorColor = true
  end,

  config = function()
    vim.cmd('colorscheme nightfly')
  end
} ]]
