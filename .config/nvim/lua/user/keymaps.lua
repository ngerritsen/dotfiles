local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
-- Leader key

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)

-- Configuration
map("n", "<Leader>se", ":e $MYVIMRC<CR>", opts)

-- Keep cursor focus while navigating
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)
map("n", "J", "mzJ`z", opts)

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- Quickfix list
map("n", "]q", "<cmd>cnext<CR>", opts)
map("n", "[q", "<cmd>cprev<CR>", opts)
map("n", "<Leader>qo", "<cmd>copen<CR>", opts)
map("n", "<Leader>qc", "<cmd>cclose<CR>", opts)

map("n", "]l", "<cmd>lnext<CR>", opts)
map("n", "[l", "<cmd>lprev<CR>", opts)
map("n", "<Leader>lo", "<cmd>lopen<CR>", opts)
map("n", "<Leader>lc", "<cmd>lclose<CR>", opts)

-- Tests
map("n", "<Leader>tf", "<cmd>TestFile<CR>", opts)
map("n", "<Leader>tn", "<cmd>TestNearest<CR>", opts)
map("n", "<Leader>tl", "<cmd>TestLast<CR>", opts)
map("n", "<Leader>tg", "<cmd>TestVisit<CR>", opts)
map("n", "<Leader>ta", "<cmd>TestSuite<CR>", opts)

-- Move lines
map("v", "<C-j>", "<cmd>m '>+1<CR>gv=gv", opts)
map("v", "<C-k>", "<cmd>m '>-2<CR>gv=gv", opts)
map("n", "<C-j>", "<cmd>m .+1<CR>==", opts)
map("n", "<C-k>", "<cmd>m .-2<CR>==", opts)
map("i", "<C-j>", "<esc><cmd>m .+1<CR>==", opts)
map("i", "<C-k>", "<esc><cmd>m .-2<CR>==", opts)

-- Resize Splits
map("n", "<C-w>-", "<cmd>resize -8<CR>", opts)
map("n", "<C-w>=", "<cmd>resize +8<CR>", opts)
map("n", "<C-w>[", "<cmd>vertical resize -8<CR>", opts)
map("n", "<C-w>]", "<cmd>vertical resize +8<CR>", opts)

-- File explorer
map("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)
map("n", "<Leader>f", ":NvimTreeToggle<CR>", opts)

-- Preserve visual paste
map("v", "p", '"_dP', opts)

-- Navigate Buffers
map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-w>", "<cmd>Bdelete<CR>", opts)
map("n", "<S-h>", "<cmd>bprev<CR>", opts)
map("n", "<Leader><Leader>", "<cmd>e#<CR>", opts)

-- Visual indent (stay in indentation mode)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
map("n", "<C-s>", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<C-e>", "<cmd>Telescope oldfiles<cr>", opts)
map("n", "<C-q>", "<cmd>Telescope quickfix<cr>", opts)

-- Linting & formatting
map("n", "<Leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
map("n", "<Leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
