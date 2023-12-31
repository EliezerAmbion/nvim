local set = vim.opt
-- line numbering in the current window
-- vim.wo.number = true

-- Line numbering globally for all windows and buffers
set.nu = true
set.relativenumber = false

-- insert 2 spaces for a tab
set.tabstop = 2
set.softtabstop = 2

set.smartindent = true

-- the number of spaces inserted for each indentation
set.shiftwidth = 2

-- convert tabs to spaces
set.expandtab = true

set.swapfile = false
set.backup = false

-- for undo tree: to make access of undos even if a long time ago
-- set.undodir = os.getenv('HOME') .. '/.vim/undodir'
set.undofile = true

-- Search highlighting. Access search by typing /
set.hlsearch = true

set.incsearch = true

-- ignore case in search patterns
set.ignorecase = true

-- Line below the cursor when navigating
set.scrolloff = 10

-- minimal number of screen columns either side of cursor if wrap is `false`
set.sidescrolloff = 8

-- always show the sign column, otherwise it would shift the text each time
set.signcolumn = 'yes'

set.updatetime = 500

set.colorcolumn = ''

set.termguicolors = true
set.bg = 'dark'

-- cursor
-- vim.cmd([[highlight nCursor guifg=#ff0000 guibg=#ff0000]])
set.guicursor = "n:blinkon1,n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- hightlight the current line
set.cursorline = true

-- Set completeopt to have a better completion experience
set.completeopt = 'menuone,noselect'

-- time of leader
set.timeoutlen = 4000

-- mouse middle click paste
-- set.mouse = 'v'

-- enable mouse click
-- set.mouse = 'a'

-- to enable bufferline mouse hover
set.mousemoveevent = true

-- makes the text of long lines that exceed the width of the screen always visible
set.wrap = false

-- Access system clipboard
set.clipboard = "unnamedplus"
