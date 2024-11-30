return {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        -- your custom config here
        enabled = true, -- start enabled
        execution_message = {
          message = function()
            return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
          end,
          dim = 0.18,
          cleaning_interval = 1250,
        },
        trigger_events = { "InsertLeave", "TextChanged" },
        condition = function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")
          return fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {})
        end,
        debounce_delay = 135,
        callbacks = {
          before_saving = function()
            print("AutoSave: Saving...")
          end,
        },
      })
    end,
  },
}
