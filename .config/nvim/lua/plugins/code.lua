return {
	{ "editorconfig/editorconfig-vim" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = true },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"folke/todo-comments.nvim",
		event = "VeryLazy",
		config = true,
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"vim-test/vim-test",
		dependencies = {
			"folke/which-key.nvim",
		},
		event = "VeryLazy",
		config = function()
			vim.cmd([[let test#strategy = "neovim"]])
			require("which-key").register({
				t = {
					name = "test",
					f = { "<cmd>TestFile<cr>", "Run tests (current file)" },
					n = { "<cmd>TestNearest<cr>", "Run tests (nearest)" },
					l = { "<cmd>TestLast<cr>", "Run tests (last)" },
					g = { "<cmd>TestVisit<cr>", "Open test file" },
					a = { "<cmd>TestSuite<cr>", "Run tests (suite)" },
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.pairs").setup()
			require("mini.comment").setup({
				options = {
					custom_commentstring = function()
						return require("ts_context_commentstring.internal").calculate_commentstring({})
							or vim.bo.commentstring
					end,
				},
			})
		end,
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"folke/which-key.nvim",
		},
		config = function()
			require("which-key").register({
				x = {
					name = "diagnostics",
					x = { "<cmd>TroubleToggle document_diagnostics<cr>", "Show document diagnostics" },
					w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Show workspace diagnostics" },
					q = { "<cmd>TroubleToggle quickfix<cr>", "Show diagnostics in quickfix list" },
					l = { "<cmd>TroubleToggle loclist<cr>", "Show diagnostics in loclist" },
				},
			}, { prefix = "<leader>" })
		end,
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
