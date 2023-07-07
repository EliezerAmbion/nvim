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
    'jose-elias-alvarez/null-ls.nvim',

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },     -- Required. This is for the autosuggestion
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required. This is for flutter as well.
    { 'L3MON4D3/LuaSnip' },     -- Required
  },

  config = function()
    local lsp_zero = require('lsp-zero').preset {
      manage_nvim_cmp = {
        set_sources = 'recommended',
      },
    }
    local lsp_config = require('lspconfig')
    local null_ls = require 'null-ls'
    local cmp = require 'cmp'

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

    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, remap = false }

      vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set('n', '<leader>e', function() vim.diagnostic.open_float() end, opts)
      vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
      vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
      vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set('n', '<leader>gr', function() vim.lsp.buf.references() end, opts)
      vim.keymap.set('n', '<F2>', function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
      vim.keymap.set('n', '<leader>dl', function() vim.diagnostic.setqflist() end, opts)
    end

    lsp_zero.on_attach(on_attach)

    vim.diagnostic.config({
      virtual_text = true,
      signs = false,
    })

    lsp_config['dartls'].setup({
      --on_attach = on_attach,
      root_dir = lsp_config.util.root_pattern('.git'),

      on_attach = function(client, bufnr)
        -- Enable null-ls for the dart language server
        client.resolved_capabilities.document_formatting = true
        require("lspconfig")["null-ls"].setup {} -- Enable null-ls
        require("lspconfig")["null-ls"].on_attach(client, bufnr)
      end,
    })

    lsp_zero.format_on_save({
      format_opts = {
        async = false,
        timeout_ms = 1000,
      },
      servers = {
        ['lua_ls'] = { 'lua' },
        ['null-ls'] = { 'dart', }
      }
    })

    lsp_zero.setup()

    null_ls.setup {
      on_attach = on_attach,
      sources = {
        null_ls.builtins.formatting.prettier
      },
    }

    cmp.setup {
      sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'luasnip' },
        { name = 'buffer',  keyword_length = 5 },
      },

      mapping = {
        ["<C-e>"] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
      },
    }
  end
}
