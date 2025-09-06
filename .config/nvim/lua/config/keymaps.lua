-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- see full diagnostic message in case it goes out of screen bounds
vim.keymap.set("n", "<leader>od", vim.diagnostic.open_float, { desc = "Open Diagnostic" })
-- use compiler extension to open compiler window
vim.keymap.set("n", "<leader>gd", "<cmd>make<cr>", { desc = "Compile File" })
