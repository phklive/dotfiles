return {
	"saecki/crates.nvim",
	ft = { "toml" },
	config = function(_, opts)
		local cmp = require("cmp")
		local core_utils = require("core.utils")
		local crates = require("crates")

		crates.setup(opts)
		cmp.setup.buffer({
			sources = { { name = "crates" } },
		})
		crates.show()
		core_utils.load_mappings("crates")
	end,
}
