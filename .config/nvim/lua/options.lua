require "nvchad.options"

local g = vim.g
local o = vim.o
local opt = vim.opt

-- Cursorline
o.cursorlineopt = "both"

-- Line numbers
o.number = true
o.relativenumber = true

-- Save undo history
o.undofile = true

-- Visible whitespace characters in the editor
o.list = true
opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  space = "·",
  -- eol = "↴",
}

-- Snippets
g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/lua_snippets"
