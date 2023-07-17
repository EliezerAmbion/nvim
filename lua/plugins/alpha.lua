return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')
    -- require('telescope')

    local logo = [[

   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

    ]]

    local function getGreeting(name)
      local tableTime = os.date('*t')
      local datetime = os.date(' %Y-%m-%d   %H:%M:%S')
      local hour = tableTime.hour
      local greetingsTable = {
        [1] = '  Sleep well',
        [2] = '  Good morning',
        [3] = '  Good afternoon',
        [4] = '  Good evening',
        [5] = '󰖔  Good night',
      }
      local greetingIndex = 0
      if hour == 23 or hour < 7 then
        greetingIndex = 1
      elseif hour < 12 then
        greetingIndex = 2
      elseif hour >= 12 and hour < 18 then
        greetingIndex = 3
      elseif hour >= 18 and hour < 21 then
        greetingIndex = 4
      elseif hour >= 21 then
        greetingIndex = 5
      end
      return '\t' .. datetime .. '\t' .. greetingsTable[greetingIndex] .. ', ' .. name
    end

    local keys = {
      dashboard.button('ff', '  Find file', '<cmd>Telescope find_files<cr>'),
      dashboard.button('fl', '  Find text', '<cmd>Telescope live_grep<cr>'),
      dashboard.button('fo', '󱋡  Recents', '<cmd>Telescope oldfiles<cr>'),
    }

    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'
    dashboard.section.footer.opts.hl = 'AlphaFooter'

    local G = require('config.globals').alpha()
    dashboard.section.header.val = vim.split(logo .. '\n' .. getGreeting('Eli'), '\n')
    dashboard.section.buttons.val = keys
    dashboard.section.footer.val = G.footer

    alpha.setup(dashboard.opts)

    -- vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,

}
