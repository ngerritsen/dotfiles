local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		indicator_icon = "▎",
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		show_buffer_close_icons = false,
		show_close_icon = false,
		always_show_bufferline = false,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "Explorer",
				highlight = "Directory",
				padding = 1,
			},
		},
	},
	highlights = {
		indicator_selected = {
			guifg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
	},
})
