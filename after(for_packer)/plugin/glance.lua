local glance = require('glance')
local actions = glance.actions

vim.keymap.set('n', 'gD', '<cmd>Glance definitions<cr>')
vim.keymap.set('n', 'gR', '<cmd>Glance references<cr>')
vim.keymap.set('n', 'gY', '<cmd>Glance type_definitions<cr>')
vim.keymap.set('n', 'gM', '<cmd>Glance implementations<cr>')

glance.setup({
  theme = {
    enable = true,
    mode = 'brighten'
  },
})
