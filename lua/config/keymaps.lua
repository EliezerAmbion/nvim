vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local normalmoderemap = function(newkeymap, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', newkeymap, func, { noremap = true, buffer = bufnr, desc = desc })
end

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
normalmoderemap('<leader>ww', '<cmd>w<cr>', 'Write/Save the file')
normalmoderemap('<leader>/', '<cmd>nohlsearch<cr>', 'Remove highlights in search')
normalmoderemap('J', 'mzJ`z', 'Append the line below the cursor after the current line')
normalmoderemap('<n>', 'nzzzv', 'Center the cursor in the middle of the screent when search jumping')
normalmoderemap('<N>', 'Nzzzv', 'Center the cursor in the middle of the screent when search jumping')
normalmoderemap('<C-d>', '<C-u>zz', 'Center the cursor in the middle of the screen when jumping upwards')
normalmoderemap('<C-d>', '<C-d>zz', 'Center the cursor in the middle of the screen when jumping downwards')

normalmoderemap('<C-h>', '<C-w>h', 'Left: Change window focus')
normalmoderemap('<C-l>', '<C-w>l', 'Right: Change window focus')
normalmoderemap('<C-k>', '<C-w>k', 'Up: Change window focus')
normalmoderemap('<C-j>', '<C-w>j', 'Down: Change window focus')
--
--normalmoderemap('<C-S-H>', '<C-w>h', '(Mac OS) Left: Change window focus')
--normalmoderemap('<C-S-L>', '<C-w>l', '(Mac OS) Right: Change window focus')
--normalmoderemap('<C-S-K>', '<C-w>k', '(Mac OS) Up: Change window focus')
--normalmoderemap('<C-S-J>', '<C-w>j', '(Mac OS) Down: Change window focus')

normalmoderemap('<leader>o', 'o<esc>0', 'add a space below w/o leaving normal mode')
normalmoderemap('<leader>O', 'O<Esc>0', 'Add a space ABOVE w/o leaving normal mode')

-- Copying to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'Shift V <leader>y: Copy the line to system clipboard' })
normalmoderemap('<leader>Y', [["+Y]], '<leader>y a p: Copy the paragraph to system clipboard')

-- greatet remap ever
-- checkout yt 0 to lsp by primeagen minute 27
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = 'Move the highlighted line BELOW' })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = 'Move the highlighted line ABOVE' })

-- When noremap is set to true in a key mapping in Vim or Neovim, it means that the mapping is non-recursive. Here's what it implies:
-- 1. Non-Recursive Mapping: If noremap is set to true, the key mapping will not be expanded recursively.
-- In other words, if the key being mapped is part of another mapping, Vim will not apply the other mapping recursively.
-- 2. Preventing Remapping: Setting noremap to true prevents any further mappings from being applied to the mapped key sequence.
-- This ensures that the mapping will always execute the command specified in the mapping itself, without being affected by any other mappings.
-- By using noremap, you can create mappings that have a consistent behavior and avoid unexpected side effects from other mappings.
-- It is generally recommended to use noremap unless there is a specific need for recursive mapping or to allow other mappings to be applied.
