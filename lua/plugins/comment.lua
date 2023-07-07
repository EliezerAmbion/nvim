return {
  'numToStr/Comment.nvim',

  config = function()
    require('Comment').setup()
  end
}

--[[ NOTES:
gcc to comment a line
gc9j to comment 9 lines
visual mode: select the lines, then gb ]]
