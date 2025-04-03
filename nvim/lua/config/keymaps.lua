vim.g.mapleader = " "

local keymap = vim.keymap

-- goto start & end of line
keymap.set({ "n", "v" }, "H", "0")
keymap.set({ "n", "v" }, "L", "$")

-- delete to black hole register
keymap.set({ "n", "v" }, "x", '"_x')
keymap.set({ "n", "v" }, "d", '"_d')

-- manage splits
keymap.set("n", "<leader>v", "<C-w>v")
keymap.set("n", "<leader>h", "<C-w>s")
keymap.set("n", "<leader>e", "<C-w>=")
keymap.set("n", "<leader>x", "<cmd>:wq<CR>")

-- manage tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- clear search highlights
keymap.set("n", "<leader>nf", ":nohl<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- manage zen mode
keymap.set("n", "<leader>tz", "<cmd>ZenMode | PencilToggle<cr>")

-- SnipRun
keymap.set("n", "<Leader>r", ":SnipRun<CR>")
keymap.set("v", "<Leader>r", ":'<,'>SnipRun<CR>")
