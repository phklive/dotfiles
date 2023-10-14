return {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    -- load cholorscheme here
    vim.cmd([[colorscheme catppuccin]])
  end
}
