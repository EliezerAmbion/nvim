return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- optional for floating window border decoration
  },

  keys = {
    { '<leader>GG', '<cmd>LazyGit<cr>', desc = 'LazyGit Open' }
  },
}
