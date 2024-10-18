return {
  {
    "L3MON4D3/LuaSnip", -- LuaSnip 是一个强大的代码片段插件
    dependencies = {
      "rafamadriz/friendly-snippets", -- 一些常用的片段集成包
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
