require "nvchad.options"

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Save undo history
vim.o.undofile = true

-- Visible whitespace characters in the editor
vim.o.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  --  space = "·",
  -- eol = "↴",
}

-- Snippets
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/lua_snippets"
