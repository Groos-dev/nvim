return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000, -- 确保主题优先加载
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
