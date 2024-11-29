local logo = [[
         _                                      
 __  __ (_)  _ __    ____   ___   _ __     __ _ 
 \ \/ / | | | '_ \  |_  /  / _ \ | '_ \   / _` |
  >  <  | | | | | |  / /  |  __/ | | | | | (_| |
 /_/\_\ |_| |_| |_| /___|  \___| |_| |_|  \__, |
                                           |___/ 
]]
return {
  "nvimdev/dashboard-nvim",
  enabled = true,
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = "hyper",
      config = {
        header = vim.split(string.rep("\n", 2) .. logo, "\n"),
        week_header = {
          concat = "Have a great coding day!", -- 时间字符串之后的附加字符串
          append = { "Happy Coding!" }, -- 在时间字符串行之后追加内容
        },
        shortcut = {
          { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
          {
            icon = " ",
            icon_hl = "@variable",
            desc = "Files",
            group = "Label",
            action = "Telescope find_files",
            key = "f",
          },
          -- {
          --   desc = " Apps",
          --   group = "DiagnosticHint",
          --   action = "Telescope app",
          --   key = "a",
          -- },
          -- {
          --   desc = " dotfiles",
          --   group = "Number",
          --   action = "Telescope dotfiles",
          --   key = "d",
          -- },
        },
      },
      hide = {
        statusline = false,
      },
      -- config
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}