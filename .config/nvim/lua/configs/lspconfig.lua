require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
  "cssls",
  "html",
  -- "kotlin_language_server",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
