return {
  "mattn/emmet-vim",
  config = function()
    -- 可以在这里添加更多的

    -- 禁用 Emmet 全局安装
    vim.g.user_emmet_install_global = 0

    -- 在 css 文件中设置 Emmet 的快捷键映射
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "css", "html" },
      callback = function()
        vim.api.nvim_buf_set_keymap(0, "i", "<Tab>", "<Plug>(emmet-expand-abbr)", { noremap = true, silent = true })
      end,
    })
  end,
}
