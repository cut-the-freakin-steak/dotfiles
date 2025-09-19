-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- see full diagnostic message in case it goes out of screen bounds
-- use compiler extension to open compiler window

local util = require("lazyvim.util")
local map = vim.keymap

map.set("n", "<leader>gd", "<cmd>make<cr>", { desc = "Compile File" })

-- delete default snacks.explorer lazyvim keymaps
map.del("n", "<leader>e")
map.del("n", "<leader>E")
map.del("n", "<leader>fe")
map.del("n", "<leader>fE")

-- cause im gonna swap em
map.set("n", "<leader>e", function()
	require("snacks.explorer").open({ path = vim.fn.getcwd() })
end, { desc = "Explorer Snacks (cwd)", silent = true })

map.set("n", "<leader>E", function()
	require("snacks.explorer").open({ path = util.root() })
end, { desc = "Explorer Snacks (Root Dir)", silent = true })

map.set("n", "<leader>fe", function()
	require("snacks.explorer").open({ path = vim.fn.getcwd() })
end, { desc = "Explorer Snacks (cwd)", silent = true })

map.set("n", "<leader>fE", function()
	require("snacks.explorer").open({ path = util.root() })
end, { desc = "Explorer Snacks (Root Dir)", silent = true })

-- do the same for the terminal

map.del("n", "<leader>ft")
map.del("n", "<leader>fT")
map.del("n", "<C-/>")

map.set("n", "<leader>ft", function()
	require("snacks").terminal.open(nil, { cwd = vim.loop.cwd() })
end, { desc = "Terminal (cwd)", silent = true })

-- <leader>fT will now open terminal in root dir
map.set("n", "<leader>fT", function()
	require("snacks").terminal.open(nil, { cwd = util.root() })
end, { desc = "Terminal (Root Dir)", silent = true })

-- Also map <C-/> to what you want (maybe to cwd instead of root)
map.set("n", "<C-/>", function()
	require("snacks").terminal.toggle(nil, { cwd = vim.loop.cwd() })
end, { desc = "Terminal (cwd)", silent = true })
