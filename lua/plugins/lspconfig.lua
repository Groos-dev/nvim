return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Disable specific keymaps and use lsp-sage's keymaps
    keys[#keys + 1] = { "<leader>ca", false } -- Disable Code Action shortcut
    keys[#keys + 1] = { "]d", false } -- Disable next diagnostic
    keys[#keys + 1] = { "[d]", false } -- Disable previous diagnostic
  end,
  opts = function(_, opts)
    -- Disable autoformat globally
    opts.autoformat = false

    -- Ensure the `servers` table exists
    opts.servers = opts.servers or {}

    -- Add Emmet LS configuration
    opts.servers.emmet_ls = {
      filetypes = {
        "html",
        "css",
      },
      -- "javascriptreact",
      -- "typescriptreact",
      -- "vue",
      -- "sass",
      -- "scss",
      -- "less",
      -- "svelte",
      -- "pug",

      init_options = {
        html = {
          options = {
            ["bem.enabled"] = false, -- Disable BEM for Emmet
          },
        },
      },
    }

    -- Add Tailwind CSS LS configuration
    opts.servers.tailwindcss = {
      filetypes = {
        "html",
        "css",
        "javascriptreact",
        "typescriptreact",
        "vue",
        "svelte", -- Optional: Add Svelte support if needed
      },
    }
  end,
}
