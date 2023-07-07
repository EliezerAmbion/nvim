return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },

  keys = {
    { '<leader>rf', '<cmd>FlutterRun<cr>',                 desc = 'Flutter Run' },
    { '<leader>rq', '<cmd>FlutterQuit<cr>',                desc = 'Flutter Quit' },
    { '<leader>rl', '<cmd>FlutterReload<cr>',              desc = 'Flutter Reload' },
    { '<leader>rs', '<cmd>FlutterRestart<cr>',             desc = 'Flutter Restart' },
    { '<leader>rt', '<cmd>Telescope flutter commands<cr>', desc = 'Flutter Tools Commands' },
    { '<leader>rv', '<cmd>Telescope flutter fvm<cr>',      desc = 'Flutter Change SDK' },
  },

  opts = {
    debugger = {           -- integrate with nvim dap + install dart code debugger
      enabled = true,
      run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
      -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
      -- see |:help dap.set_exception_breakpoints()| for more info
      exception_breakpoints = {},

      register_configurations = function(paths)
        local dap = require('dap')

        -- NOTE: check first if dap.adapters.dart is needed
        -- dap.adapters.dart = {
        --   type = "executable",
        --   -- As of this writing, this functionality is open for review in https://github.com/flutter/flutter/pull/91802
        --   command = "flutter",
        --   args = {"debug_adapter"}
        -- }

        dap.configurations.dart = {
          {
            type = "dart",
            request = "launch",
            name = "Launch Flutter Program",
            -- The nvim-dap plugin populates this variable with the filename of the current buffer
            program = "${file}",
            -- The nvim-dap plugin populates this variable with the editor's current working directory
            cwd = "${workspaceFolder}",
            -- This gets forwarded to the Flutter CLI tool, substitute `linux` for whatever device you wish to launch
            --toolArgs = {"-d", "linux"}
          }
        }
      end,
    },

    closing_tags = {
      -- highlight = 'ErrorMsg', -- ErrorMsg will make closing tag to red
      prefix = '>> ',
      enabled = true,
    },

    widget_guides = {
      enabled = false, -- disabled because you have indent-blackline
    },

    fvm = true,

    -- TODO: add appversion and device in lualine dynamically
    decorations = {
      statusline = {
        app_version = true,
        device = true,
      }
    },

    lsp = {
      color = {
        enabled = true,   -- enabled color variables
        foreground = true -- will color the color variables
      },

      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        renameFilesWithClasses = 'prompt',
        enableSnippets = true,
        updateImportsOnRename = true,
        lineLength = 80, -- the default is 80

        analysisExcludedFolders = {
          vim.fn.expand('$HOME/AppData/Local/Pub/Cache'),
          vim.fn.expand('$HOME/.pub-cache'),
          vim.fn.expand('/opt/homebrew/'),
          vim.fn.expand('$HOME/tools/flutter/'),
        },
      },
    },

    -- no need to add flutter_path on windows, you have added a path in environment variables
    -- To test if it is working, type :FlutterRun
    -- flutter_path = '<C:/Users/eliez/Documents/flutter/bin/dart.bat>',
  }
}
