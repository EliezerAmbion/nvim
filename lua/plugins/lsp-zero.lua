return {
  'VonHeikemen/lsp-zero.nvim',
  lazy = false,
  priority = 50,
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    {                            -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required. This is for the autosuggestion
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required. This is for flutter as well.
    { 'hrsh7th/cmp-path' },     -- Suggest path

    -- Snippets
    { 'L3MON4D3/LuaSnip' }, -- Required
    { 'saadparwaiz1/cmp_luasnip' },
    { 'rafamadriz/friendly-snippets' },
  },

  config = function()
    -- local lsp_config = require('lspconfig')
    local lsp_zero = require('lsp-zero').preset({})
    local cmp = require 'cmp'
    local mason = require('mason')

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, remap = false }

      vim.keymap.set('n', '<F2>', function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
      vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)

      --- @NOTE: You are not using this. Should you keep this?
      -- vim.keymap.set('n', '<leader>e', function() vim.diagnostic.open_float() end, opts)
      -- vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
      -- vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
      -- vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
      -- vim.keymap.set('n', '<leader>dl', function() vim.diagnostic.setqflist() end, opts)
    end

    ---@forLSP_ZERO
    -- Fix Undefined global 'vim'
    lsp_zero.configure('lua_ls', {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    })
    lsp_zero.on_attach(on_attach)
    lsp_zero.format_on_save({
      format_opts = {
        async = false,
        timeout_ms = 10000,
      },
      servers = {
        ['lua_ls'] = { 'lua' },
        ['dartls'] = { 'dart', }
      }
    })
    lsp_zero.setup {}

    ---@forCMP
    local G = require('config.globals').rosepine()
    vim.api.nvim_set_hl(0, "MyPmenu", { fg = G.border })
    vim.api.nvim_set_hl(0, "MyCursorLine", { bg = G.bg, fg = G.fgDark, bold = true, italic = true })

    cmp.setup {
      completion = {
        completeopt = 'menu,menuone,noinsert', -- highlight the first candidate in autocomplete
      },

      window = {
        completion = {
          border = 'rounded',
          winhighlight = "Normal:MyPmenu,CursorLine:MyCursorLine", -- adding this will set rose-pine border as well
        },
        documentation = {
          border = 'rounded',
          winhighlight = "Normal:MyPmenu",
        },
      },

      -- sources for autocompletion
      sources = {
        { name = 'nvim_lsp' }, -- lsp
        { name = 'path' },     -- file system paths
        { name = 'luasnip' },  -- snippets
        { name = 'buffer' },   -- text within current buffer
      },

      mapping = {
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-u>'] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm { select = true }, -- select first candidate in autocomplete upon enter
      },
    }

    ---@forMASON
    mason.setup({
      ui = {
        border = 'rounded',
        height = 0.8,
        width = 0.6
      }
    })
  end,
}
