return {
	{ "editorconfig/editorconfig-vim" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = true },
	{ "norcalli/nvim-colorizer.lua", config = true },
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"vim-test/vim-test",
		event = "VeryLazy",
		keys = {
			{ "<leader>tf", "<cmd>TestFile<cr>", desc = "Run tests (current file)" },
			{ "<leader>tn", "<cmd>TestNearest<cr>", desc = "Run tests (nearest)" },
			{ "<leader>tl", "<cmd>TestLast<cr>", desc = "Run tests (last)" },
			{ "<leader>tg", "<cmd>TestVisit<cr>", desc = "Open test file" },
			{ "<leader>ta", "<cmd>TestSuite<cr>", desc = "Run tests (suite)" },
		},
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.pairs").setup()
			require("mini.comment").setup({
				options = {
					custom_commentstring = function()
						return require("ts_context_commentstring.internal").calculate_commentstring()
							or vim.bo.commentstring
					end,
				},
			})
		end,
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{
		"folke/trouble.nvim",
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle<cr>" },
			{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>" },
			{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>" },
			{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>" },
			{ "<leader>xx", "<cmd>TroubleToggle loclist<cr>" },
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
	},
}
