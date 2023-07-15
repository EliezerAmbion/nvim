return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,

  config = function()
    local G = require('config.globals')

    require('rose-pine').setup({
      -- @usage 'auto'|'main'|'moon'|'dawn'
      variant = 'auto',
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = 'main',
      disable_background = false,
      disable_float_background = false,
      disable_italics = false,

      --- @usage string hex value or named color from rosepinetheme.com/palette
      groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'base',
        panel_nc = 'base',
        border = G.rosepine.border,
        comment = 'muted',
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
        -- Telescope
        TelescopeSelection = { fg = G.rosepine.fg, bg = G.rosepine.bg, blend = 20 },
        TelescopeSelectionCaret = { fg = G.rosepine.bg, },

        -- Indent Blankline
        IndentBlanklineContextChar = {
          fg = G.rosepine.fg,
        },

        -- Blend colours against the "base" background
        CursorLine = { bg = G.rosepine.bg, blend = 20 },
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
