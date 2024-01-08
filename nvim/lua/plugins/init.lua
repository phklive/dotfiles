return {
  "folke/neodev.nvim",
  { "numToStr/Comment.nvim",    config = true },
  { "j-hui/fidget.nvim",        tag = "legacy",                         opts = {} },
  { "stevearc/dressing.nvim",   event = "VeryLazy" },
  { "kylechui/nvim-surround",   event = { "BufReadPre", "BufNewFile" }, version = "*", config = true },
  { "simrat39/rust-tools.nvim", ft = { "rust" } },
}
