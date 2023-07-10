return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,

  config = function()
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
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',
      },

      -- Change specific vim highlight groups
      -- https://github.com/rose-pine/neovim/wiki/Recipes
      highlight_groups = {
        IndentBlanklineContextChar = {
          fg = 'rose',
        },

        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 20 },
        -- StatusLine = { fg = 'love', bg = 'love', blend = 10 },
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
