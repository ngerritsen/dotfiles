return {
	{ "christoomey/vim-tmux-navigator" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			local dashboard = require("alpha.themes.dashboard")
			local theta = require("alpha.themes.theta")

			theta.header.val = {
				[[                                                                                ]],
				[[                                                                                ]],
				[[ =================     ===============     ===============   ========  ======== ]],
				[[ \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ]],
				[[ ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ]],
				[[ || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ]],
				[[ ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ]],
				[[ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ]],
				[[ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| ]],
				[[ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ]],
				[[ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| ]],
				[[ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| ]],
				[[ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || ]],
				[[ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || ]],
				[[ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || ]],
				[[ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || ]],
				[[ ||   .=='    _-'          `-__\._-'         `-_./__-'         `' |. /|  |   || ]],
				[[ ||.=='    _-'                                                     `' |  /==.|| ]],
				[[ =='    _-'                                                            \/   `== ]],
				[[ \   _-'                                                                `-_   / ]],
				[[  `''                                                                      ``'  ]],
				[[                                                                                ]],
				[[                                                                                ]],
			}

			theta.buttons.val = {
				{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
				{ type = "padding", val = 1 },
				dashboard.button("e", "  New file", "<cmd>ene<CR>"),
				dashboard.button("SPC f f", "󰈞  Find file"),
				dashboard.button("SPC f o", "  Recently opened files"),
				dashboard.button("SPC f t", "  Find todos"),
				dashboard.button("SPC f s", "󰊄  Live grep"),
				dashboard.button("c", "  Configuration", "<cmd>e ~/.config/nvim/ <CR>"),
				dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
				dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
			}

			return theta.config
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"folke/which-key.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
					},
				},
			})

			require("which-key").register({
				e = {
					name = "file explorer",
					e = { "<cmd>Neotree toggle<cr>", "Toggle file explorer" },
					r = { "<cmd>Neotree reveal<cr>", "Focus file in explorer" },
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"folke/which-key.nvim",
			"nvim-pack/nvim-spectre",
		},
		config = function()
			require("spectre").setup()
			require("telescope").setup({
				style = "borderless",
				defaults = {
					prompt_prefix = "   ",
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = {
							prompt_position = "top",
						},
					},
					mappings = {
						n = { ["q"] = require("telescope.actions").close },
					},
				},
			})
			require("which-key").register({
				f = {
					name = "find",
					f = { "<cmd>Telescope find_files hidden=true<cr>", "Find files" },
					h = { "<cmd>Telescope help_tags<cr>", "Find help" },
					b = { "<cmd>Telescope buffers<cr>", "Find in buffers" },
					s = { "<cmd>Telescope live_grep hidden=true<cr>", "Text search" },
					o = { "<cmd>Telescope oldfiles<cr>", "Find in history" },
					q = { "<cmd>Telescope quickfix<cr>", "Find in quickfix" },
					c = { "<cmd>Telescope colorscheme<cr>", "Find colorscheme" },
					r = {
						function()
							require("spectre").open()
						end,
						"Find and replace",
					},
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
				theme = "catppuccin",
			},
		},
	},
	{ "folke/which-key.nvim", event = "VeryLazy", config = true },
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local gs = require("gitsigns")

			gs.setup({
				current_line_blame = true,
				current_line_blame_opts = {
					delay = 250,
				},
			})

			require("which-key").register({
				g = {
					name = "git",
					b = {
						function()
							gs.blame_line({ full = true })
						end,
						"Show line blame",
					},
					d = {
						function()
							gs.diffthis()
						end,
						"Show file diff",
					},
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o", "x" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Flash Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
}
