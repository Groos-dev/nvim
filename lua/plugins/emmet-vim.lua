return {
  {
    "mattn/emmet-vim",
    event = "InsertEnter",
    config = function()
      vim.g.user_emmet_leader_key = "<C-Z>"
      vim.g.user_emmet_install_global = 0
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "html", "css", "javascriptreact", "typescriptreact" },
        callback = function()
          vim.cmd("EmmetInstall")
        end,
      })
    end,
  },
}
