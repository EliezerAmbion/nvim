local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
--require("telescope").load_extension "flutter"

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- ripgrep required: brew install ripgrep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<C-gf>', builtin.git_files, {})

require('telescope').setup {
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
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        -- disable ctrl p or ctrl n for next or previous
        ['<C-p>'] = false,
        ['<C-n>'] = false,
      },
    },
  }
}
