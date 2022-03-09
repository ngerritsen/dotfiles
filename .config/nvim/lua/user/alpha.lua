local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[    ___       __                                                            ]],
	[[  /'' _ `\ /''_ `\                                                          ]],
	[[  /\ \/\ \ /\ \L\ \                 Niels Gerritsen                         ]],
	[[  \ \_\ \_\\ \____ \                https://nielsgerritsen.com              ]],
	[[   \/_/\/_/ \/___L\ \  _______      https://gitlab.com/ngerritsen/dotfiles  ]],
	[[              /\____/ /\______\                                             ]],
	[[              \_/__/  \/______/                                             ]],
	[[                                                                            ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("n", "פּ  Explore files", ":NvimTreeFocus<CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "nielsgerritsen.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
