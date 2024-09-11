return {
	"saecki/crates.nvim",
	dependencies = {
		"hrsh7th/nvim-cmp",
	},
	ft = { "toml" },
	tag = "stable",
	config = function()
		require("crates").setup({
			completion = {
				cmp = {
					enabled = true,
				},
			},
		})
		require("cmp").setup.buffer({
			sources = { { name = "crates" } },
		})

		local crates = require("crates")
		local opts = { silent = true }

		vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, opts)
		vim.keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
		vim.keymap.set("n", "<leader>cd", crates.show_dependencies_popup, opts)
		vim.keymap.set("n", "<leader>ch", crates.open_homepage, opts)
		vim.keymap.set("n", "<leader>cr", crates.open_repository, opts)
		vim.keymap.set("n", "<leader>cD", crates.open_documentation, opts)
	end,
}
