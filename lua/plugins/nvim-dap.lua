return {
  'mfussenegger/nvim-dap',

  keys = {
    { '<leader><F1>', '<cmd>lua require("dap").continue()<cr>',          desc = 'Debug Continue' },
    { '<leader><F2>', '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = 'Debug Add Breakpoint' },
  }

}
