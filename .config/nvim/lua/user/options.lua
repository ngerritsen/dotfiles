-- Files
vim.opt.backup = false -- do not create backup when saving files
vim.opt.undofile = true -- enable persistent undo
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.swapfile = false -- do not create a swapfile
vim.opt.fileencoding = "utf-8" -- the encoding written to a file

-- Editor
vim.opt.cursorline = true -- highlight the current line
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.number = true -- set numbered lines
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files

-- Search
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns

-- Interface
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for completion
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.smartcase = true -- smart casing
vim.opt.scrolloff = 8 -- space to keep horizontally around cursor
vim.opt.sidescrolloff = 8 -- space to keep veritcally around cursor
vim.opt.showtabline = 2 -- always show tabs

-- Indentation
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.tabstop = 2 -- insert 2 spaces for a tab

-- Splits
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

-- Timeouts
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 300 -- faster completion (4000ms default)

-- Misc
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
