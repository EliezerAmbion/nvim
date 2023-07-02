local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>')

require("lazy").setup({
  spec = {
    -- { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },

  keys = {
    {'<leader>l', '<cmd>Lazy<cr>', { noremap = true, buffer = bufnr, desc = 'Open Lazy Modal' }}
  },
  
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" }, missing = true },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})




-- return require('lazy').setup({
--   -- ide same as vscode
--   -- use 'ldelossa/nvim-ide'

--   -- Theme, highlighting, colors, etc..
--   'folke/tokyonight.nvim',
--   'lukas-reineke/indent-blankline.nvim',
--   { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, -- for highlighting variables and whatnot.

--   {
--     'nvim-lualine/lualine.nvim',
--     dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
--   },

--   'rcarriga/nvim-notify',
--   'mg979/vim-visual-multi',
--   'romgrk/barbar.nvim',

--   -- File and folder management
--   'theprimeagen/harpoon',
--   { -- fuzzy finder
--     'nvim-telescope/telescope.nvim',
--     lazy = true,
--     tag = '0.1.1',                                 -- or, branch = '0.1.x',
--     dependencies = { { 'nvim-lua/plenary.nvim' } } -- required
--   },

--   -- File explorer
--   'nvim-tree/nvim-tree.lua',
--   'nvim-tree/nvim-web-devicons', -- install nerd-fonts: https://github.com/ryanoasis/nerd-fonts#font-installation and chage terminal font to hack nerd font
--   'mbbill/undotree',

--   -- git
--   'tpope/vim-fugitive',
--   'lewis6991/gitsigns.nvim', -- Adds git signs to the gutter

--   -- Language support
--   {
--     'VonHeikemen/lsp-zero.nvim',
--     branch = 'v2.x',
--     dependencies = {
--       -- LSP Support
--       { 'neovim/nvim-lspconfig' }, -- Required
--       {                            -- Optional
--         'williamboman/mason.nvim',
--         build = function()
--           pcall(vim.cmd, 'MasonUpdate')
--         end,
--       },
--       { 'williamboman/mason-lspconfig.nvim' }, -- Optional

--       -- Autocompletion
--       { 'hrsh7th/nvim-cmp' },     -- Required
--       { 'hrsh7th/cmp-nvim-lsp' }, -- Required. This is for flutter as well.
--       { 'L3MON4D3/LuaSnip' },     -- Required
--     }
--   },

--   {
--     "windwp/nvim-autopairs",
--     config = function() require("nvim-autopairs").setup {} end
--   },

--   "dnlhc/glance.nvim",

--   {
--     'kosayoda/nvim-lightbulb',
--     dependencies = 'antoinemadec/FixCursorHold.nvim',
--   },

--   {
--     "AckslD/nvim-neoclip.lua",
--     dependencies = {
--       { 'kkharji/sqlite.lua',           module = 'sqlite' },
--       { 'nvim-telescope/telescope.nvim' },
--     },
--   },

--   -- debugger
--   'mfussenegger/nvim-dap',

--   -- Haves: hot reload, hot restart, selecting devices/emulators to build, outline window, widget guides, error lens, etc.
--   -- Don't haves: autocomplete, code actions, etc.
--   {
--     'akinsho/flutter-tools.nvim',
--     dependencies = {
--       'nvim-lua/plenary.nvim',
--       'stevearc/dressing.nvim', -- optional for vim.ui.select
--     }
--   },
-- })
