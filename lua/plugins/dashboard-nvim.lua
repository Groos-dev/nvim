local logo = [[
         _
 __  __ (_)  _ __    ____   ___   _ __     __ _
 \ \/ / | | | '_ \  |_  /  / _ \ | '_ \   / _` |
  >  <  | | | | | |  / /  |  __/ | | | | | (_| |
 /_/\_\ |_| |_| |_| /___|  \___| |_| |_|  \__, |
                                           |___/
]]
return {
  "snacks.nvim",
  opts = function(_, opts)
    opts.dashboard.preset.header = logo
  end,
}
