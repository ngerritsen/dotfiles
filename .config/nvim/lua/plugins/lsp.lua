return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			{ "folke/neodev.nvim", config = true },
		},
		keys = {
			{ "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>" },
			{ "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" },
			{ "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>" },
			{ "gr", "<cmd>lua vim.lsp.buf.references()<CR>" },
			{ "gl", "<cmd>lua vim.diagnostic.open_float()<CR>" },
			{ "K", vim.lsp.buf.hover },
			{ "<leader>rs", "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
			{ "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>" },
			{ "<leader>rf", "<cmd>lua vim.lsp.buf.code_action()<CR>" },
			{ "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>' },
			{ "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>' },
		},
		build = ":MasonUpdate",
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			require("mason").setup()

			mason_lspconfig.setup({
				ensure_installed = {
					"tsserver",
					"eslint",
					"lua_ls",
					"gopls",
					"rust_analyzer",
					"intelephense",
					"pyright",
					"html",
					"marksman",
					"jsonls",
					"jdtls",
					"clangd",
					"tailwindcss",
					"taplo",
					"yamlls",
				},
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})

			local signs = {
				{ name = "DiagnosticSignError", text = "" },
				{ name = "DiagnosticSignWarn", text = "" },
				{ name = "DiagnosticSignHint", text = "" },
				{ name = "DiagnosticSignInfo", text = "" },
			}

			for _, sign in ipairs(signs) do
				vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
			end

			local config = {
				virtual_text = true,
				signs = {
					active = signs,
				},
				update_in_insert = true,
				underline = true,
				severity_sort = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			}

			vim.diagnostic.config(config)

			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded",
			})

			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = "rounded",
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
		opts = {
			automatic_setup = true,
		},
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		keys = {
			{
				"<leader>lf",
				function()
					vim.lsp.buf.format()
				end,
				desc = "Format document",
			},
		},
		opts = function()
			local null_ls = require("null-ls")
			local formatting = null_ls.builtins.formatting
			local diagnostics = null_ls.builtins.diagnostics

			return {
				debug = false,
				sources = {
					formatting.prettier,
					formatting.gofmt,
					formatting.stylua,
					formatting.rustfmt,
					diagnostics.eslint,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end
				end,
			}
		end,
	},
}
