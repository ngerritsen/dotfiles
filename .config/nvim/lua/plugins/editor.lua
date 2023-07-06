return {
	{ "christoomey/vim-tmux-navigator" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{
				"<leader>ee",
				"<cmd>Neotree toggle<cr>",
				desc = "Explorer NeoTree (root dir)",
			},
			{
				"<leader>er",
				"<cmd>Neotree reveal<cr>",
				desc = "Explorer NeoTree (cwd)",
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"nvim-pack/nvim-spectre",
		keys = {
			{
				"<leader>sr",
				function()
					require("spectre").open()
				end,
				desc = "Replace in files (Spectre)",
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Show buffers" },
			{ "<leader>ss", "<cmd>Telescope live_grep<cr>", desc = "Search text" },
			{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Show history" },
			{ "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Show quickfix" },
			{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Find colorscheme" },
		},
		config = true,
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
		config = true,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
