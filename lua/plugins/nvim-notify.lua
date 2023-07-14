return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',

  opts = {
    render = 'compact',
    stages = 'slide',
    timeout = 3000, -- default 5000
    fps = 60,       -- default 30. the higher the more cpu usage.

    minimum_width = 50,
    -- max_height = function()
    --   return math.floor(vim.o.lines * 0.55)
    -- end,
    --
    -- max_width = function()
    --   return math.floor(vim.o.columns * 0.55)
    -- end,
  },
}
