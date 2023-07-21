-- Adds git signs to the gutter
return {
  'lewis6991/gitsigns.nvim',

  opts = {
    signs               = {
      add = { text = '│' },
      change = { text = '│' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '┆' },
    },
    attach_to_untracked = true,
    current_line_blame  = true,
  }
}
