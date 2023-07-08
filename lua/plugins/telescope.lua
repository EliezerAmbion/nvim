return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.1', -- or branch = '0.1.1',
  lazy = true,
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
  },

  keys = {
    { '<leader>ff', function() require('telescope.builtin').find_files() end,  desc = 'Find Files' },
    { '<leader>fg', function() require('telescope.builtin').live_grep() end,   desc = 'Find Grep' },
    { '<leader>fc', function() require('telescope.builtin').grep_string() end, desc = 'Find Grep on the cursor' },
    { '<leader>fb', function() require('telescope.builtin').buffers() end,     desc = 'Find Buffers' },
    { '<leader>fh', function() require('telescope.builtin').help_tags() end,   desc = 'Find Help Tags' },
  },

  opts = {
    defaults = {
      file_ignore_patterns = {
        'build',
        'ios',
        'macos',
        'linux',
        'web',
        'android',
        'windows',
      },
      mappings = {
        i = {
          ['<esc>'] = function(prompt_bufnr)
            require('telescope.actions').close(prompt_bufnr)
          end,
          ['<C-j>'] = function(prompt_bufnr)
            require('telescope.actions').move_selection_next(prompt_bufnr)
          end,
          ['<C-k>'] = function(prompt_bufnr)
            require('telescope.actions').move_selection_previous(prompt_bufnr)
          end,

          -- disable ctrl p and n for navigating in telescope
          ['<C-p>'] = function() end,
          ['<C-n>'] = function() end,
        },
      },
    }
  }
}
