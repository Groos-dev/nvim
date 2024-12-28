return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "eslint" },
    automatic_installation = { exclude = { "vtsls"} },
  },
}
