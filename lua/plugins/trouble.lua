return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>",                       desc = 'Trouble Toggle' },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = 'Trouble Workspace Diagnostics' },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = 'Trouble Document Diagnostics' },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>",               desc = 'Trouble LocList' },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",              desc = 'Trouble Quickfix' },
    { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>",        desc = 'Trouble LSP References' },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
