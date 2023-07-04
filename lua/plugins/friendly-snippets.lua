return {
  "tim-carey-code/friendly-snippets",
  name = "tims-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
