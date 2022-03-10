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
		always_show_bufferline = false,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "Explorer",
				highlight = "MoreMsg",
				padding = 1,
			},
		},
	},
	highlights = {
		fill = {
			guifg = { attribute = "fg", highlight = "Tabline" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		background = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		buffer_visible = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},

		close_button = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		close_button_visible = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		tab_selected = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		tab = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		tab_close = {
			guifg = { attribute = "fg", highlight = "TabLineSel" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		duplicate_selected = {
			guifg = { attribute = "fg", highlight = "TabLineSel" },
			guibg = { attribute = "bg", highlight = "TabLineSel" },
			gui = "italic",
		},
		duplicate_visible = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
			gui = "italic",
		},
		duplicate = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
			gui = "italic",
		},
		modified = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		modified_selected = {
			guifg = { attribute = "fg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		modified_visible = {
			guifg = { attribute = "fg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		separator = {
			guifg = { attribute = "bg", highlight = "TabLine" },
			guibg = { attribute = "bg", highlight = "TabLine" },
		},
		separator_selected = {
			guifg = { attribute = "bg", highlight = "Normal" },
			guibg = { attribute = "bg", highlight = "Normal" },
		},
		indicator_selected = {
			guifg = { attribute = "fg", highlight = "DiagnosticInfo" },
		},
	},
})
