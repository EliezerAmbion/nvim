-- Adds git signs to the gutter
return {
  'lewis6991/gitsigns.nvim',
  event = 'VeryLazy',

  opts = {
    current_line_blame = true,
  }
}
