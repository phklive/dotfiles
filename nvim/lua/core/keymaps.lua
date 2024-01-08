-- for conciseness
local keymap = vim.keymap

-- set leader key to space
vim.g.mapleader = " "

-- goto start & end of line
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")

-- Manage splits
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")
keymap.set("n", "<leader>x", ":close<CR>")
