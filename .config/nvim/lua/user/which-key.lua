local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

which_key.setup({
	window = {
		border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 3, 2, 2, 2 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 3, 2, 3 }, -- extra window padding [top, right, bottom, left]
	},
	layout = {
		width = { min = 30, max = 50 },
		spacing = 4,
	},
	key_labels = {
		["<space>"] = "SPC",
		["<cr>"] = "RET",
		["<tab>"] = "TAB",
	},
})
