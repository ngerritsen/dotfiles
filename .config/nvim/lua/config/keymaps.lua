-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Better escape
vim.keymap.set("i", "jj", "<esc>", { silent = true })

-- Switch to previous buffer
vim.keymap.set("n", "<leader><space>", ":e#<CR>", { silent = true })

-- Preserve visual paste
vim.keymap.set("v", "p", '"_dP', { silent = true })
