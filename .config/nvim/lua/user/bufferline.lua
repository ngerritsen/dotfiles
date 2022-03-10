local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

-- Run :hi command to view all available highlight styles
local tab_bg = { attribute = "bg", highlight = "TabLine" }
local tab_fg = { attribute = "fg", highlight = "TabLine" }
local selected_tab_bg = { attribute = "bg", highlight = "Normal" }
local selected_tab_fg = { attribute = "fg", highlight = "Normal" }
local modified_fg = { attribute = "fg", highlight = "String" }
local info_fg = { attribute = "fg", highlight = "DiagnosticInfo" }
local hint_fg = { attribute = "fg", highlight = "DiagnosticHint" }
local error_fg = { attribute = "fg", highlight = "DiagnosticError" }
local warning_fg = { attribute = "fg", highlight = "DiagnosticWarn" }
local subtle_fg = { attribute = "fg", highlight = "TabLineSel" }

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
			guifg = tab_fg,
			guibg = tab_bg,
		},
		background = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		separator = {
			guifg = tab_bg,
			guibg = tab_bg,
		},
		separator_selected = {
			guifg = selected_tab_fg,
			guibg = selected_tab_bg,
		},
		indicator_selected = {
			guifg = info_fg,
			guibg = selected_tab_bg,
			gui = "bold",
		},
		buffer_selected = {
			guifg = selected_tab_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		buffer_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		buffer = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		close_button = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		close_button_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		close_button_selected = {
			guifg = selected_tab_fg,
			guibg = selected_tab_bg,
		},
		tab_selected = {
			guifg = selected_tab_fg,
			guibg = selected_tab_bg,
		},
		tab = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		tab_close = {
			guifg = subtle_fg,
			guibg = selected_tab_bg,
		},
		duplicate_selected = {
			guifg = subtle_fg,
			guibg = selected_tab_bg,
			gui = "italic",
		},
		duplicate_visible = {
			guifg = subtle_fg,
			guibg = tab_bg,
			gui = "italic",
		},
		duplicate = {
			guifg = tab_fg,
			guibg = tab_bg,
			gui = "italic",
		},
		modified = {
			guifg = modified_fg,
			guibg = tab_bg,
		},
		modified_selected = {
			guifg = modified_fg,
			guibg = selected_tab_bg,
		},
		modified_visible = {
			guifg = modified_fg,
			guibg = tab_bg,
		},
		diagnostic = {
			guifg = info_fg,
			guibg = tab_bg,
		},
		diagnostic_visible = {
			guifg = info_fg,
			guibg = tab_bg,
		},
		diagnostic_selected = {
			guifg = info_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		hint = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		hint_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		hint_selected = {
			guifg = hint_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		hint_diagnostic = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		hint_diagnostic_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		hint_diagnostic_selected = {
			guifg = hint_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		info = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		info_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		info_selected = {
			guifg = info_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		info_diagnostic = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		info_diagnostic_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
		},
		info_diagnostic_selected = {
			guifg = info_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		warning = {
			guifg = warning_fg,
			guibg = tab_bg,
		},
		warning_visible = {
			guifg = warning_fg,
			guibg = tab_bg,
		},
		warning_selected = {
			guifg = warning_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		warning_diagnostic = {
			guifg = warning_fg,
			guibg = tab_bg,
		},
		warning_diagnostic_visible = {
			guifg = warning_fg,
			guibg = tab_bg,
		},
		warning_diagnostic_selected = {
			guifg = warning_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		error = {
			guifg = error_fg,
			guibg = tab_bg,
		},
		error_visible = {
			guifg = error_fg,
			guibg = tab_bg,
		},
		error_selected = {
			guifg = error_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		error_diagnostic = {
			guifg = error_fg,
			guibg = tab_bg,
		},
		error_diagnostic_visible = {
			guifg = error_fg,
			guibg = tab_bg,
		},
		error_diagnostic_selected = {
			guifg = error_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		pick_selected = {
			guifg = selected_tab_fg,
			guibg = selected_tab_bg,
			gui = "bold,italic",
		},
		pick_visible = {
			guifg = tab_fg,
			guibg = tab_bg,
			gui = "bold,italic",
		},
		pick = {
			guifg = tab_fg,
			guibg = tab_bg,
			gui = "bold,italic",
		},
	},
})
