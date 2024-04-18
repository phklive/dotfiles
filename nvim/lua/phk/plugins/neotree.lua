return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set(
			"n",
			"<leader>t",
			":Neotree filesystem reveal left toggle<CR>",
			{ noremap = true, silent = true }
		)

		require("nvim-web-devicons").setup({
			override_by_extension = {
				["toml"] = {
					icon = "T",
					color = "#987000",
					name = "toml",
				},
			},
		})

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
			},
			window = {
				width = 28,
			},
		})
	end,
}
