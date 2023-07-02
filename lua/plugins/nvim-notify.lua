return {
  'rcarriga/nvim-notify',
  -- dismissing notification are handled by noice.lua
  -- NOTE: if noice.lua dismis keymap is not working, use below:
  -- keys = {
  --   {
  --     '<leader>nod',
  --     function()
  --       require('notify').dismiss({ silent = true, pending = true })
  --     end,
  --     desc = 'Dismiss all Notifications',
  --   },
  -- },
  opts = {
    timeout = 1000,
    max_height = function()
      return math.floor(vim.o.lines * 0.55)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.55)
    end,
  },
}