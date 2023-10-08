return {
  "christoomey/vim-tmux-navigator",
  "iamcco/markdown-preview.nvim",
  { "numToStr/Comment.nvim",    config = true },
  { "j-hui/fidget.nvim",        tag = "legacy",                                  opts = {} },
  { "stevearc/dressing.nvim",   event = "VeryLazy" },
  { "simrat39/rust-tools.nvim", ft = { "rust" } },
  { "kylechui/nvim-surround",   event = { "BufReadPre", "BufNewFile" },          version = "*", config = true },
  { "folke/trouble.nvim",       dependencies = { "nvim-tree/nvim-web-devicons" } },
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- { "mg979/vim-visual-multi",    branch = "master" },
}
