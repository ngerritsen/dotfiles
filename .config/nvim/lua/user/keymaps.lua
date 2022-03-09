local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Configuration
map("n", "<Leader>se", ":e $MYVIMRC<CR>", opts)
map("n", "<Leader>sv", ":source $MYVIMRC<CR>", opts)

-- Tests
map("n", "<Leader>tf", ":TestFile<CR>", opts)
map("n", "<Leader>tn", ":TestNearest<CR>", opts)
map("n", "<Leader>tl", ":TestLast<CR>", opts)
map("n", "<Leader>tg", ":TestVisit<CR>", opts)
map("n", "<Leader>ta", ":TestSuite<CR>", opts)

-- Navigate Splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize Splits
map("n", "<C-Up>", ":resize -5<CR>", opts)
map("n", "<C-Down>", ":resize +5<CR>", opts)
map("n", "<C-Left>", ":vertical resize -5<CR>", opts)
map("n", "<C-Right>", ":vertical resize +5<CR>", opts)

-- Better escape
map("v", "jj", "<Esc>", opts)
map("x", "jj", "<Esc>", opts)
map("i", "jj", "<Esc>", opts)

-- File explorer
map("n", "<C-f>", ":NvimTreeFindFileToggle<CR>", opts)

-- Preserve visual paste
map("v", "p", '"_dP', opts)

-- Navigate Buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprev<CR>", opts)
map("n", "<S-w>", ":Bdelete<CR>", opts)

-- Visual indent (stay in indentation mode)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move lines
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
map("x", "<A-j>", ":m .+1<CR>==", opts)
map("x", "<A-k>", ":m .-2<CR>==", opts)

-- Telescope
map("n", "<C-p>", ":Telescope find_files<cr>", opts)
map("n", "<C-s>", ":Telescope live_grep<cr>", opts)
map("n", "<C-e>", ":Telescope oldfiles<cr>", opts)

-- Linting & formatting
map("n", "<Leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
map("n", "<Leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)
