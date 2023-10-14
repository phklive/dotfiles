-- for conciseness
local keymap = vim.keymap

-- set leader key to space
vim.g.mapleader = " "

-- goto start & end of line
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Manage splits
keymap.set('n', '<leader>v', '<C-w>v')
keymap.set('n', '<leader>h', '<C-w>s')
keymap.set('n', '<leader>x', ':close<CR>')

-- Tmux navigation
keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>')
keymap.set('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>')
keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>')
keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>')
