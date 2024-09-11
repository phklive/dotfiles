return {
	{
		"mrcjkb/rustaceanvim",
		version = "^5", -- Recommended
		ft = { "rust" },
		config = function()
			-- Plugin-specific settings
			vim.g.rustaceanvim = {
				server = {
					settings = {
						["rust-analyzer"] = {
							cargo = {
								allFeatures = true,
							},
							inlayHints = {
								bindingModeHints = {
									enable = false,
								},
								chainingHints = {
									enable = true,
								},
								closingBraceHints = {
									enable = true,
									minLines = 25,
								},
								closureReturnTypeHints = {
									enable = "never",
								},
								lifetimeElisionHints = {
									enable = "never",
									useParameterNames = false,
								},
								maxLength = 25,
								parameterHints = {
									enable = true,
								},
								reborrowHints = {
									enable = "never",
								},
								renderColons = true,
								typeHints = {
									enable = true,
									hideClosureInitialization = false,
									hideNamedConstructor = false,
								},
							},
						},
					},
				},
			}

			-- Function to set custom highlights
			local function set_rust_inlay_hints_highlights()
				-- Medium-light gray color for inlay hints, matching the image
				local inlay_hint_gray = "#7A7A7A"

				-- Try different possible highlight group names
				local highlight_groups = {
					"RustInlayHint",
					"RustInlayHints",
					"RustInlayHintsType",
					"RustInlayHintsParameter",
					"LspInlayHint",
				}

				for _, group in ipairs(highlight_groups) do
					vim.api.nvim_set_hl(0, group, { fg = inlay_hint_gray, bg = "NONE" })
				end
			end

			-- Schedule the highlight setting for after plugin load
			vim.schedule(function()
				set_rust_inlay_hints_highlights()

				-- Set up an autocmd to reapply highlights when colorscheme changes
				vim.api.nvim_create_autocmd("ColorScheme", {
					pattern = "*",
					callback = set_rust_inlay_hints_highlights,
				})
			end)
		end,
	},
}
