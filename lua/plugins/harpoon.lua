return {
  'theprimeagen/harpoon',
  lazy = true,

  keys = {
    { '<leader>ha', function() require('harpoon.mark').add_file() end,        desc = 'Harpoon Add' },
    { '<leader>hh', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon Menu' },
    { '<leader>h1', function() require('harpoon.ui').nav_file(1) end,         desc = 'Harpoon 1' },
    { '<leader>h2', function() require('harpoon.ui').nav_file(2) end,         desc = 'Harpoon 2' },
    { '<leader>h3', function() require('harpoon.ui').nav_file(3) end,         desc = 'Harpoon 3' },
    { '<leader>h4', function() require('harpoon.ui').nav_file(4) end,         desc = 'Harpoon 4' },
  }
}
