return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
		keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
		keymap.set("n", "<leader>fg", "<cmd>Telescope git_branches<cr>")
		keymap.set("n", "<leader>f/", "<cmd>Telescope live_grep<cr>")
		keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>")
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")
		keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<CR>")
	end,
}
