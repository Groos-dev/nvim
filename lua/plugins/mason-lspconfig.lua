return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "eslint" }, -- 自动安装这些 LSP 服务器
        kutomatic_installation = true,
    },
}
