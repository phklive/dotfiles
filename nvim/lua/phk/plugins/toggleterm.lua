return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    local keymap = vim.keymap
    local Terminal = require('toggleterm.terminal').Terminal
    local qt = Terminal:new({
      direction = "float"
    })
    local lazygit = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function()
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    function _qt_toggle()
      qt:toggle()
    end

    keymap.set("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
    keymap.set("n", "<leader>qt", "<cmd>lua _qt_toggle()<CR>", { noremap = true, silent = true })
  end
}
