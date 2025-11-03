-- orthodoxCanonicalForm.lua
local ls = require "luasnip"
local s = ls.snippet
local f = ls.function_node

return {
  s("orthodoxCanonicalForm", {
    f(function()
      local filename = vim.fn.expand "%:t"
      local classname = filename:gsub("%.hpp$", "")
      local header_guard = string.upper(classname) .. "_HPP"

      return {
        "#ifndef " .. header_guard,
        "#define " .. header_guard,
        "#include <iostream>",
        "",
        "class " .. classname,
        "{",
        "\tpublic:",
        "\t\t// Orthodox Canonical Form",
        "\t\t" .. classname .. "(void);",
        "\t\t" .. classname .. "(const " .. classname .. "& other);",
        "\t\t" .. classname .. " &operator=(const " .. classname .. " &other);",
        "\t\t~" .. classname .. "();",
        "};",
        "",
        "#endif",
      }
    end),
  }),
}
