return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,


  config = function()
    require('rose-pine').setup({
      -- @usage 'auto'|'main'|'moon'|'dawn'
      variant = 'moon',
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = 'moon',
      disable_background = false,
      disable_float_background = true,
      disable_italics = false,

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
