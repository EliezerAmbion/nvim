return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,

  opts = {},

  config = function()
    local wk = require("which-key");

    wk.register({
      f = ' Find',
      h = ' Harpoon',
      r = ' Flutter',
      g = ' Glance',
      G = ' Git',
      u = ' Undo Tree',
      n = ' Noice'

    }, { prefix = '<leader>' })
  end
}
