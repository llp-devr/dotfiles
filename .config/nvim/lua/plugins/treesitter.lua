return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "c",
      "css",
      "html",
      "kotlin",
      "lua",
      "vim",
      "vimdoc",
    },
    auto_install = false,
    highlight = {
      enable = true,
    },
  },
}
