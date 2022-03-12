local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	open_mapping = [[<c-\>]],
	direction = "float",
	shading_factor = 0,
	float_opts = {
		border = "curved",
	},
})
