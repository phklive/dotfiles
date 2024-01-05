return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set('n', '<leader>t', ':Neotree filesystem reveal left toggle<CR>', { noremap = true, silent = true });
        require("neo-tree").setup({
          close_if_last_window = true,
          enable_git_status = true,
          enable_diagnostics = true,
          popup_border_style = "rounded",
          filesystem = {
          filtered_items = {
            visible = true,
          },
      },
      default_component_configs = {
        name = {
      use_git_status_colors = false,
    },
        git_status = {
          symbols = {
            -- Change type
            added     = "✚", -- NOTE: you can set any of these to an empty string to not show them
            deleted   = "✖",
            modified  = "",
            renamed   = "󰁕",
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "󰄱",
            staged    = "",
            conflict  = "",
          },
          align = "right",
          },
        },
      window = {
        width = 35,
      },
        });
    end
}
