return {
  "0x00-ketsu/maximizer.nvim",

  keys = {
    { 'mm', '<cmd>lua require("maximizer").toggle()<CR>', desc = 'Maximizer Toggle' },
  },

  config = function()
    require("maximizer").setup {
    }
  end
}
