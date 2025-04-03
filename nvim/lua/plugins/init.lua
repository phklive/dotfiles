return {
	-- Tmux navigation
	"christoomey/vim-tmux-navigator",

	"stevearc/dressing.nvim",
	"nvim-lua/plenary.nvim",

	-- LSP notifications
	{ "j-hui/fidget.nvim", tag = "legacy", opts = {} },

	-- Comments
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},

	-- Surround
	{
		"kylechui/nvim-surround",
		event = { "BufReadPre", "BufNewFile" },
		version = "*",
		config = true,
	},

	-- Misc
	"stevearc/dressing.nvim",
	"nvim-lua/plenary.nvim",
	"bullets-vim/bullets.vim",
}
