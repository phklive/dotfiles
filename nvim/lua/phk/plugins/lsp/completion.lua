-- Autocompletion
return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    { 'L3MON4D3/LuaSnip' },
    "hrsh7th/cmp-nvim-lsp-signature-help", -- signature help
    "onsails/lspkind.nvim",                -- vs-code like pictograms
    "hrsh7th/cmp-buffer",                  -- source for text in buffer
    "hrsh7th/cmp-path",                    -- source for path
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_cmp()
    -- And you can configure cmp even more, if you want to.
    local cmp = require('cmp')
    local cmp_action = lsp_zero.cmp_action()
    cmp.setup({
      formatting = lsp_zero.cmp_format(),
      -- formatting = {
      --   fields = { 'abbr', 'kind', 'menu' },
      --   format = require('lspkind').cmp_format({
      --     mode = 'symbol',       -- show only symbol annotations
      --     maxwidth = 50,         -- prevent the popup from showing more than provided characters
      --     ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
      --   })
      -- },

      sources = {
        { name = "nvim_lsp_signature_help" }, -- signature help
        { name = "nvim_lsp" },                -- lsp
        { name = "luasnip" },                 -- snippets
        { name = "buffer" },                  -- text within current buffer
        { name = "path" },                    -- file system paths
        { name = "crates" },                  -- file system paths
      },
      mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
      },
      preselect = 'item',
      completion = {
        completeopt = 'menu,menuone,noinsert'
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end
}
