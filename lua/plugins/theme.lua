return {
  { "EdenEast/nightfox.nvim" },
  {
    "marko-cerovac/material.nvim", -- plugin name
    lazy = false, -- make sure load at startup
    priority = 1001, -- make sure load first than other plugins
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000, -- make sure load before than other plugins
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
