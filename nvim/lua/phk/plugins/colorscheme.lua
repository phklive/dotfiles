-- return {
--   "catppuccin/nvim",
--   priority = 1000,
--   config = function()
--     -- load cholorscheme here
--     vim.cmd([[colorscheme catppuccin]])
--   end
-- }

-- return {
--   "morhetz/gruvbox",
--   priority = 1000,
--   config = function()
--     -- load cholorscheme here
--     vim.cmd([[colorscheme gruvbox]])
--   end
-- }

-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function()
--     -- load cholorscheme here
--     vim.cmd([[colorscheme tokyonight]])
--   end
-- }

return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    -- load cholorscheme here
    vim.cmd([[colorscheme kanagawa]])
    vim.cmd [[
      highlight LineNr ctermbg=NONE guibg=NONE
      highlight CursorLineNr ctermbg=NONE guibg=NONE
      highlight SignColumn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
      highlight GitSignsAdd guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight GitSignsChange guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight GitSignsDelete guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight LspDiagnosticsSignError guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight LspDiagnosticsSignWarning guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight LspDiagnosticsSignInformation guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
      highlight LspDiagnosticsSignHint guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
    ]]
  end
}
