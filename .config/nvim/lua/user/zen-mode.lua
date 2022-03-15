local status_ok, zen_mode = pcall(require, "zen-mode")
if not status_ok then
	return
end

zen_mode.setup({
	window = {
		width = 130,
		options = {
			signcolumn = "no",
		},
	},
	plugins = {
		gitsigns = { enabled = false }, -- disables git signs
		tmux = { enabled = false }, -- disables the tmux statusline
	},
})
