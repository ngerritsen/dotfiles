local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- leader key
map("", "<Space>", "<Nop>", opts)

-- Better escape
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)

-- Keep cursor focus while navigating
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)
map("n", "J", "mzJ`z", opts)

-- Terminal
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- Quickfix list
map("n", "]q", "<cmd>cnext<CR>", opts)
map("n", "[q", "<cmd>cprev<CR>", opts)
map("n", "<leader>qo", "<cmd>copen<CR>", opts)
map("n", "<leader>qc", "<cmd>cclose<CR>", opts)

map("n", "]l", "<cmd>lnext<CR>", opts)
map("n", "[l", "<cmd>lprev<CR>", opts)
map("n", "<leader>lo", "<cmd>lopen<CR>", opts)
map("n", "<leader>lc", "<cmd>lclose<CR>", opts)

-- Resize Splits
map("n", "<C-w>-", "<cmd>resize -8<CR>", opts)
map("n", "<C-w>=", "<cmd>resize +8<CR>", opts)
map("n", "<C-w>[", "<cmd>vertical resize -8<CR>", opts)
map("n", "<C-w>]", "<cmd>vertical resize +8<CR>", opts)

-- Preserve visual paste
map("v", "p", '"_dP', opts)

-- Navigate Buffers
map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-w>", "<cmd>Bdelete<CR>", opts)
map("n", "<S-h>", "<cmd>bprev<CR>", opts)
map("n", "<leader><leader>", "<cmd>e#<CR>", opts)

-- Visual indent (stay in indentation mode)
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
