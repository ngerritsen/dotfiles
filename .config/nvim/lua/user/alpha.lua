local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[    ___       __                 ]],
	[[  /'' _ `\ /''_ `\               ]],
	[[  /\ \/\ \ /\ \L\ \              ]],
	[[  \ \_\ \_\\ \____ \             ]],
	[[   \/_/\/_/ \/___L\ \  _______   ]],
	[[              /\____/ /\______\  ]],
	[[              \_/__/  \/______/  ]],
	[[                                 ]],
}

dashboard.section.buttons.val = {
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("<C-p>", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("<C-e>", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("<C-f>", "פּ  Explore files", ":NvimTreeFocus<CR>"),
	dashboard.button("<C-s>", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("<Leader>se", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "nielsgerritsen.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Directory"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
