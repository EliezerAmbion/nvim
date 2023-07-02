# Neovim

## Installation

1. Make sure you install neovim
   On Windows: `choco install neovim`
   On Mac: `brew install neovim`

- `nvim -v` to check

## Using packer

2. Create an nvim directory

   - On Windows: C:\Users\<user-directory>\AppData\Local\

     - Show hidden files to access AppData

   - On Mac: edit and add here
     - Show hidden files to access .config

3. In nvim directory, create files and folders of:

   - init.lua

     - require 'eli_config'
     - **no need to add the full path, just the directory name.**

   - lua/eli_config

     - this directory is requirable by lua
     - create your personal configurations here, typically:
       - **init.lua:** require keymaps and options here, no need to require packer
       - **keymaps.lua:** your keymaps and remaps
       - **options.lua:** options and preferences
       - **packer.lua:** plugin manager

   - after/plugin
     - **nvim will run this directory after lua**
     - add your plugin settings here.
     - e.g. nvim-tree.lua, lsp-zero.lua.

## Using lua

### TODO:
