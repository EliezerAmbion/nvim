require('indent_blankline').setup {
  -- context is off by default, use this to turn it on
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  space_char_blankline = ' ',
  context_char = '|',
  --char = '',                              -- this will show only the context you are on.
  max_indent_increase = 1,                -- this would only show one indent guide on the level of descriptor for long indentations for long indentations.
  show_trailing_blankline_indent = false, -- only show the indent for the same level as the context.
  strict_tabs = true,
}
