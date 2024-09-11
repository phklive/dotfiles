local opt = vim.opt

-- colors
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- set nowrap
opt.wrap = false

-- backspace
opt.backspace = "indent,eol,start"

-- Decrease update time
opt.updatetime = 200
opt.timeoutlen = 200
opt.timeout = true

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- turn off swapfile
opt.swapfile = false

-- keep some lines at eof
opt.scrolloff = 10
-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- Show which line your cursor is on
opt.cursorline = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- limit number of shown completion items
opt.pumheight = 10

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
