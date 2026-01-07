-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- tabs to 4 whitespaces, still tab character
vim.o.expandtab = false
vim.o.tabstop = 4
vim.cmd.softtabstop = 4
vim.o.shiftwidth = 4

-- python buffoonery for tab the way i want them
-- vim.cmd("let g:python_recommended_style=0")

-- turn on numbers on the left side of the editor
vim.o.number = true

-- get rid of the tildes at the bottom of the file
vim.opt.fillchars = { eob = " " }

-- turn on word wrap, breaking at each word, not in the middle of one
vim.opt.wrap = true
vim.opt.linebreak = true

-- chooses what color theme nvim uses
vim.o.background = "dark"

-- set lsps
vim.g.lazyvim_rust_diagnostics = "rust-analyzer" -- rust
vim.g.lazyvim_python_lsp = "basedpyright"

if vim.g.neovide then
	-- scaling factors
	local os = vim.uv.os_uname().sysname
	if os == "Linux" then
		vim.g.neovide_scale_factor = 0.85

		-- set nvim clipboard utility to something else
		vim.o.clipboard = "unnamedplus"
	end

	if os == "Darwin" then
		vim.g.neovide_scale_factor = 1.10
	end

	vim.opt.linespace = 2
end

-- turn off bitch ass swap file warning
vim.opt.swapfile = false
