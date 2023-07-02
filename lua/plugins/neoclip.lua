return {
  'AckslD/nvim-neoclip.lua',
  lazy = true,

  dependencies = {
    { 'kkharji/sqlite.lua', module = 'sqlite' },
    -- { 'nvim-telescope/telescope.nvim' },
  },

  keys = {
    { '<leader>fy', '<cmd>Telescope neoclip<cr>' }
  },

  opts = {
    preview = true,

    keys = {
      telescope = {
        i = {
          paste_behind = false, -- to disable <C-k> as keymap
        }
      }
    },
  },

  --init = function()
  --  require('telescope').load_extension('neoclip')
  --end

  -- config = function()
  -- require('telescope').load_extension('neoclip')
  --
  --    -- prevent storing white spaces
  --    local function is_whitespace(line)
  --      return vim.fn.match(line, [[^\s*$]]) ~= -1
  --    end
  --
  --    -- prevent storing white spaces
  --    local function all(tbl, check)
  --      for _, entry in ipairs(tbl) do
  --        if not check(entry) then
  --          return false
  --        end
  --      end
  --      return true
  --    end
  --
  --    -- prevent storing white spaces
  --    filter = function(data)
  --      return not all(data.event.regcontents, is_whitespace)
  --    end
  --  end
}
