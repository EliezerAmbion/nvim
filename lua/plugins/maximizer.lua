return {
  "0x00-ketsu/maximizer.nvim",
  lazy = true,

  keys = {
    { '<leader>mm', '<cmd>lua require("maximizer").toggle()<CR>', desc = 'Maximizer Toggle' },
  },

  config = function()
    require("maximizer").setup {
    }
  end
}
