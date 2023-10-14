return {
  'neovim/nvim-lspconfig',
  cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'williamboman/mason-lspconfig.nvim' },
  },
  config = function()
    -- This is where all the LSP shenanigans will live
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_lspconfig()

    lsp_zero.set_sign_icons({
      error = '✘',
      warn = '▲',
      hint = '⚑',
      info = '»'
    })

    -- Require rust_tools
    local rust_tools = require('rust-tools')

    -- Setup LSP and Mason
    lsp_zero.on_attach(function(_, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({ buffer = bufnr, exclude = { 'gl' } })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)                      -- smart rename
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)                 -- code action
      vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>") -- show  diagnostics for file
      vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)                -- show diagnostics for line
      vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>")                       -- mapping to restart lsp if necessary
    end)
    require('mason-lspconfig').setup({
      ensure_installed = {
        "rust_analyzer",
        "lua_ls",
        "elixirls"
      },
      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          -- (Optional) Configure lua language server for neovim
          local lua_opts = lsp_zero.nvim_lua_ls()
          require('lspconfig').lua_ls.setup(lua_opts)
        end,
        rust_analyzer = function()
          rust_tools.setup({
            server = {
              filetypes = { "rust", "toml" },
            }
          })
        end
      }
    })
  end
}
