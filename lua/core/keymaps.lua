vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<ESC>', ':nohlsearch<Bar>:echo<CR>')

-- Buffers management (uses close-buffers.nvim plugin)
vim.keymap.set('n', '<C-q>', ':Bdelete<CR>')
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-left>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-right>', ':BufferLineCycleNext<CR>')

-- Save and quit
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<c-a-q>', ':qa!<CR>')

-- Windows
vim.keymap.set('n', '<A-q>', ':close<CR>')
vim.keymap.set('n', '<A-h>', ':split<CR>')
vim.keymap.set('n', '<A-v>', ':vsplit<CR>')

-- Source init.lua
vim.keymap.set('n', '<A-q>', ':close<CR>')

-- Ctrl-E / A in insert mode to go to the end / start of the line 
vim.keymap.set('i', '<C-E>', '<ESC>A')
vim.keymap.set('i', '<C-A>', '<ESC>I')

-- Ctrl-Shift-V to paste 
vim.keymap.set('i', '<C-S-v>', '<C-r>+')
vim.keymap.set('c', '<C-S-v>', '<C-r>+')
vim.keymap.set('n', '<C-S-v>', '"+p')
vim.keymap.set('v', '<C-S-v>', '_dp')

-- Paste instead of selection without yanking
vim.keymap.set('v', 'p', '_dp')

-- Ctrl-c to copy
vim.keymap.set('v', '<C-c>', '"+y')

-- Don't yank with "x"
vim.keymap.set('n', 'x', '"_x')

-- Moving selected blocks with Move plugin
vim.keymap.set('n', '<A-down>', ':MoveLine(1)<CR>')
vim.keymap.set('n', '<A-up>', ':MoveLine(-1)<CR>')
vim.keymap.set('n', '<A-left>', ':MoveHChar(-1)<CR>')
vim.keymap.set('n', '<A-right>', ':MoveHChar(1)<CR>')

vim.keymap.set('v', '<A-down>', ':MoveBlock(1)<CR>')
vim.keymap.set('v', '<A-up>', ':MoveBlock(-1)<CR>')
vim.keymap.set('v', '<A-left>', ':MoveHBlock(-1)<CR>')
vim.keymap.set('v', '<A-right>', ':MoveHBlock(1)<CR>')

-- PackerSync
vim.keymap.set('n', '<leader>ps', ':PackerSync<CR>')

-- Lazygit
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { silent = true })

-- Toggle NeoTree
vim.keymap.set('n', '<C-E>', ':NeoTreeRevealToggle<CR>', { silent = true })

-- Bracey
vim.keymap.set('n', '<leader>bo', ':Bracey<CR>', { silent = true })
vim.keymap.set('n', '<leader>br', ':BraceyReload<CR>', { silent = true })