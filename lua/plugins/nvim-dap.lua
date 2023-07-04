return {
  'mfussenegger/nvim-dap',
  lazy = false,

  dependencies = {
    'rcarriga/nvim-dap-ui',
    'jay-babu/mason-nvim-dap.nvim',
  },

  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    -- NOTE: Check if there is the need to add this commented code below
    -- dap.adapters.dart = {
    --   type = "executable",
    --   command = "dart",
    --   -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
    --   args = {"debug_adapter"}
    -- }
    -- dap.configurations.dart = {
    --   {
    --     type = "dart",
    --     request = "launch",
    --     name = "Launch Dart Program",
    --     -- The nvim-dap plugin populates this variable with the filename of the current buffer
    --     program = "${file}",
    --     -- The nvim-dap plugin populates this variable with the editor's current working directory
    --     cwd = "${workspaceFolder}",
    --     args = {"--help"}, -- Note for Dart apps this is args, for Flutter apps toolArgs
    --   }
    -- }


    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)

    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)

    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)

    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)

    dapui.setup()
  end,

  keys = {
    { '<leader>dc', '<cmd>lua require("dap").continue()<cr>',          desc = 'Debug Continue' },
    { '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = 'Debug Add Breakpoint' },
    { '<leader>dr', '<cmd>lua require("dap").repl.open()<cr>', desc = 'Debug Repl Open' }, -- check what this thing do
    { '<leader>do', '<cmd>lua require("dapui").toggle()<cr>', desc = 'Debug Open UI' },
  }
}
