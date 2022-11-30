local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = { "php", "help", "toml", "java", "vim", "javascript", "typescript", "json", "yaml", "dockerfile", "go", "html", "twig", "markdown", "lua" },
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "php" }, -- Enables regular vim syntax highlighting (for indentation).
		disable = {
			"html", -- Disable Treesitter for HTML as it messes up Twig files (will fallback to default highlighting for HTML).
		},
	},
	indent = {
		enable = true,
		disable = {
			"php",
		},
	},
	context_commentstring = {
		enable = true,
	},
})
