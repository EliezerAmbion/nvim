return {
  'AckslD/nvim-neoclip.lua',
  lazy = false,
  dependencies = {
    -- { 'kkharji/sqlite.lua', module = 'sqlite' }, -- no need to save in sql
    { 'nvim-telescope/telescope.nvim' },
  },

  keys = {
    { '<leader>fy', '<cmd>Telescope neoclip<cr>', desc = 'Open Neoclip Yanks' }
  },

  config = function()
    require('telescope').load_extension('neoclip')

    -- needed to prevent storing white spaces
    local function is_whitespace(line)
      return vim.fn.match(line, [[^\s*$]]) ~= -1
    end

    -- needed to prevent storing white spaces
    local function all(tbl, check)
      for _, entry in ipairs(tbl) do
        if not check(entry) then
          return false
        end
      end
      return true
    end

    require('neoclip').setup({
      preview = true,

      keys = {
        telescope = {
          i = {
            paste = '<cr>',
            paste_behind = false, -- to disable <C-k> as keymap
          }
        }
      },

      -- prevent storing white spaces
      filter = function(data)
        return not all(data.event.regcontents, is_whitespace)
      end

    })
  end
}
