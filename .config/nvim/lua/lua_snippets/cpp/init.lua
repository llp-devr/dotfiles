local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("42headers", {
    t {
      "/*",
      " * \"Programmers are tools for converting caffeine into code.\"",
      " * — Anonymous",
      " *",
      " * File: " .. vim.fn.expand "%:t",
      " *",
      " * Author: Leonardo Lopes Pereira",
      " * Email: lepereir@student.42.fr",
      " *",
      " * SPDX-License-Identifier: blessing",
      " */",
      "",
    },
  }),
}
