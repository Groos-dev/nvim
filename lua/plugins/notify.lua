-- notify
return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "fade_in_slide_out", -- 设置弹出效果
      timeout = 1000, -- 消息显示时间（毫秒）
      max_width = 100,
      background_colour = "#000000",
    })
    vim.notify = require("notify") -- 替换默认的通知功能
  end,
}
