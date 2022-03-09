local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "maintained",
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "php", "twig" }, -- Enables regular vim syntax highlighting (for indentation)
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
