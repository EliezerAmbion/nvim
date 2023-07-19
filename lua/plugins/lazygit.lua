return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  keys = {
    { '<leader>Gs', ':LazyGit<cr>', desc = 'LazyGit Open' }
  },

  config = function()
    require("telescope").load_extension("lazygit")
  end,
}
