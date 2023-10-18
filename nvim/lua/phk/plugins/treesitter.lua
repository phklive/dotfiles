return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "rust",
        "lua",
        "elixir",
        "erlang",
        "markdown",
        "markdown_inline",
        "yaml",
        "bash",
        "json",
        "toml",
      },
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    })
  end,
}
