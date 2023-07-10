vim.keymap.set('n', '<leader>rl', ':FlutterReload<cr>')
vim.keymap.set('n', '<leader>rs', ':FlutterRestart<cr>')
vim.keymap.set('n', '<leader>fr', ':FlutterRun<cr>')
vim.keymap.set('n', '<leader>fq', ':FlutterQuit<cr>')

require('flutter-tools').setup {
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
      enabled = true,
      --background = true
      foreground = true
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

-- TODO: make this dynamic
--vim.g.flutter_tools_decorations = {
--  app_version = '1.0.0',
--  device = 'Pixel 2',
--}
