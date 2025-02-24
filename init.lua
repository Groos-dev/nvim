-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.langmenu = "en"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.autoformat = false
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true
vim.cmd("highlight Normal guibg=NONE")
vim.cmd("highlight NonText guibg=NONE")
require("config.lazy")
