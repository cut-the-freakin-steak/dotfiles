-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- tabs to 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- python buffoonery for 2 space tab
vim.cmd("let g:python_recommended_style=0")

-- turn on numbers on the left side of the editor
vim.cmd("set number")

-- get rid of the tildes at the bottom of the file
vim.opt.fillchars = { eob = " " }

-- turn on word wrap, breaking at each word, not in the middle of one
vim.opt.wrap = true
vim.opt.linebreak = true

-- add functionality for gdscript stuff
-- local godot_project_file = vim.fn.getcwd() .. "/project.godot"
--
-- if godot_project_file then
--   vim.fn.serverstart "./godothost"
-- end

-- chooses what color theme nvim uses
vim.o.background = "dark"

-- transparency i guess
-- vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })

-- set lsp for rust
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
