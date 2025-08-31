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

-- chooses what color theme nvim uses
vim.o.background = "dark"

-- transparency i guess
-- vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })

-- GODOT STUFF!
-- function to find fodot project root directory
local function find_godot_project_root()
  local cwd = vim.fn.getcwd()
  local search_paths = { "", "/.." }

  for _, relative_path in ipairs(search_paths) do
    local project_file = cwd .. relative_path .. "/project.godot"
    if vim.uv.fs_stat(project_file) then
      return cwd .. relative_path
    end
  end

  return nil
end

-- function to check if server is already running
local function is_server_running(project_path)
  local server_pipe = project_path .. "/server.pipe"
  return vim.uv.fs_stat(server_pipe) ~= nil
end

-- function to start Godot server if needed
local function start_godot_server_if_needed()
  local godot_project_path = find_godot_project_root()

  if godot_project_path and not is_server_running(godot_project_path) then
    vim.fn.serverstart(godot_project_path .. "/server.pipe")
    return true
  end

  return false
end

-- main execution
start_godot_server_if_needed()
