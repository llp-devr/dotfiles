local options = {
  formatters_by_ft = {
    ansible = { "ansible-lint" },
    css = { "prettier" },
    html = { "prettier" },
    kotlin = { "ktfmt" },
    lua = { "stylua" },
    markdown = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    async = false,
    timeout_ms = 500,
    lsp_fallback = false,
  },
}

return options
