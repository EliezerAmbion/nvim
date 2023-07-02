local neoclip = require('neoclip')
require('telescope').load_extension('neoclip')

vim.keymap.set('n', '<leader>fy', '<cmd>Telescope neoclip<cr>')

-- prevent storing white spaces
local function is_whitespace(line)
  return vim.fn.match(line, [[^\s*$]]) ~= -1
end

-- prevent storing white spaces
local function all(tbl, check)
  for _, entry in ipairs(tbl) do
    if not check(entry) then
      return false
    end
  end
  return true
end

neoclip.setup({
  preview = true,

  keys = {
    telescope = {
      i = {
        paste_behind = false, -- to disable <C-k> as keymap
      }
    }
  },

  -- prevent storing white spaces
  filter = function(data)
    return not all(data.event.regcontents, is_whitespace)
  end
})
