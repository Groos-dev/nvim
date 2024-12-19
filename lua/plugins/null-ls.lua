return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          -- add Prettier
          null_ls.builtins.formatting.prettier.with({
            extra_args = { "--single-quote", "--jsx-single-quote" },
          }),
        },
        -- autoformate when save
        -- on_attach = function(client, bufnr)
        --   client.offset_encoding = "utf-8"
        --   if client.supports_method("textDocument/formatting") then
        --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        --     vim.api.nvim_create_autocmd("BufWritePre", {
        --       group = augroup,
        --       buffer = bufnr,
        --       callback = function()
        --         vim.lsp.buf.format({ bufnr = bufnr })
        --       end,
        --     })
        --   end
        -- end,
      })
    end,
  },
}
