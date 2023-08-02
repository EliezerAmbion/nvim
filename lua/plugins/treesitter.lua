return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',

  opts = {
    ensure_installed = { 'dart', 'javascript', 'typescript' },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },

  config = function(_, opts)
    -- change highlight color of include
    vim.api.nvim_set_hl(0, "@parameter", { link = 'Title' })

    require('nvim-treesitter.configs').setup(opts)
  end
}

--    @text.literal      Comment  -- grey
--    @text.reference    Identifier -- orange
--    @text.title        Title -- white
--    @text.uri          Underlined
--    @text.underline    Underlined
--    @text.todo         Todo -- violet
--
--    @comment           Comment
--    @punctuation       Delimiter  -- grey
--
--    @constant          Constant -- yellow
--    @constant.builtin  Special  -- orange
--    @constant.macro    Define
--    @define            Define
--    @macro             Macro
--    @string            String
--    @string.escape     SpecialChar
--    @string.special    SpecialChar
--    @character         Character
--    @character.special SpecialChar
--    @number            Number
--    @boolean           Boolean
--    @float             Float
--
--    @function          Function
--    @function.builtin  Special
--    @function.macro    Macro
--    @parameter         Identifier
--    @method            Function
--    @field             Identifier
--    @property          Identifier
--    @constructor       Special
--
--    @conditional       Conditional
--    @repeat            Repeat
--    @label             Label
--    @operator          Operator
--    @keyword           Keyword
--    @exception         Exception
--
--    @variable          Identifier
--    @type              Type
--    @type.definition   Typedef
--    @storageclass      StorageClass
--    @structure         Structure
--    @namespace         Identifier
--    @include           Include
--    @preproc           PreProc
--    @debug             Debug
--    @tag               Tag
--
