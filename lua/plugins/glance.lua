return {
  'dnlhc/glance.nvim',
  lazy = true,

  --[[ keys = {
    {'<leader>gd', '<cmd>Glance definitions<cr>' , desc = 'Glance Definition'},
    {'<leader>gr', '<cmd>Glance references<cr>' , desc = 'Glance Reference'},
    {'<leader>gt', '<cmd>Glance type_definitions<cr>' , desc = 'Glance Type_Definition'},
    {'<leader>gi', '<cmd>Glance implementations<cr>' , desc = 'Glance Implementation'},
  }, ]]

  opts = {
    theme = {
      enable = true,
      mode = 'darken'
    },
  }
}
