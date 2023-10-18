return {
  "christoomey/vim-tmux-navigator",
  "iamcco/markdown-preview.nvim",
  "folke/neodev.nvim",
  { "numToStr/Comment.nvim",               config = true },
  { "j-hui/fidget.nvim",                   tag = "legacy",                         opts = {} },
  { "stevearc/dressing.nvim",              event = "VeryLazy" },
  { "kylechui/nvim-surround",              event = { "BufReadPre", "BufNewFile" }, version = "*", config = true },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",                           opts = {} },
  { "simrat39/rust-tools.nvim",            ft = { "rust" } },
  { 'williamboman/mason.nvim',             lazy = false,                           config = true },
}
