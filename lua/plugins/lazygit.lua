return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- optional for floating window border decoration
  },

  keys = {
    { '<leader>GG', '<cmd>LazyGit<cr>', desc = 'LazyGit Open' }
  },

  config = function()
    vim.g.lazygit_use_custom_config_file_path = 1
    vim.g.lazygit_config_file_path = '~/.config/nvim/lazygit/config.yml'
  end
}
