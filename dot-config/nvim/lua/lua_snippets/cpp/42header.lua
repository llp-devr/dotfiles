-- 42header.lua
local ls = require "luasnip"
local s = ls.snippet
local f = ls.function_node

return {
  s("42headers", {
    f(function()
      local filename = vim.fn.expand "%:t"
      return {
        "/*",
        " * \"It's not a bug — it's an undocumented feature.\"",
        " *",
        " * File: " .. filename,
        " *",
        " * Author: Leonardo Lopes Pereira",
        " * Email: lepereir@student.42.fr",
        " *",
        " * SPDX-License-Identifier: blessing",
        " */",
        "",
      }
    end),
  }),
}
