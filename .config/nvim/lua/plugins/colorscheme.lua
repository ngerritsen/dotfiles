return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				custom_highlights = function(colors)
					local bg = colors.mantle
					local bg_alt = colors.surface0

					return {
						TelescopeBorder = { fg = bg, bg = bg },
						TelescopeSelectionCaret = { fg = colors.flamingo, bg = bg },
						TelescopeMatching = { fg = colors.peach },
						TelescopeNormal = { bg = bg },
						TelescopeSelection = { fg = colors.text, bg = bg_alt },
						TelescopeMultiSelection = { fg = colors.text, bg = bg_alt },

						TelescopeTitle = { fg = colors.crust, bg = colors.green },
						TelescopePreviewTitle = { fg = colors.crust, bg = colors.red },
						TelescopePromptTitle = { fg = colors.crust, bg = colors.mauve },

						TelescopePromptNormal = { fg = colors.flamingo, bg = bg_alt },
						TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
					}
				end,
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
