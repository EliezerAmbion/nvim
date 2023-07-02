
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- ide same as vscode
  -- use 'ldelossa/nvim-ide'

  -- Theme, highlighting, colors, etc..
  use 'folke/tokyonight.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- for highlighting variables and whatnot.
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'rcarriga/nvim-notify'
  use 'mg979/vim-visual-multi'
  use 'romgrk/barbar.nvim'

  -- File and folder management
  use 'theprimeagen/harpoon'
  use {                                        -- fuzzy finder
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',                             -- or, branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } } -- required
  }

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons' -- install nerd-fonts: https://github.com/ryanoasis/nerd-fonts#font-installation and chage terminal font to hack nerd font
  use 'mbbill/undotree'

  -- git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim' -- Adds git signs to the gutter

  -- Language support
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required. This is for flutter as well.
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use "dnlhc/glance.nvim"
  use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim',
  }
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { 'kkharji/sqlite.lua',           module = 'sqlite' },
      { 'nvim-telescope/telescope.nvim' },
    },
  }

  -- debugger
  use 'mfussenegger/nvim-dap'

  -- Haves: hot reload, hot restart, selecting devices/emulators to run, outline window, widget guides, error lens, etc.
  -- Don't haves: autocomplete, code actions, etc.
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }
end)
