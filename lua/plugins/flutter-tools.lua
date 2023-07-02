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
      }
    },

    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      renameFilesWithClasses = 'prompt',
      enableSnippets = true,
      updateImportsOnRename = true,

      analysisExcludedFolders = {
        vim.fn.expand('$HOME/AppData/Local/Pub/Cache'),
        vim.fn.expand('$HOME/.pub-cache'),
        vim.fn.expand('/opt/homebrew/'),
        vim.fn.expand('$HOME/tools/flutter/'),
      },
    },

    -- no need to add flutter_path on windows, you have added a path in environment variables
    -- To test if it is working, type :FlutterRun
    -- flutter_path = '<C:/Users/eliez/Documents/flutter/bin/dart.bat>',
  }
}
