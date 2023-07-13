-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mason").setup({})
require("mason-lspconfig").setup()
require("nvim-treesitter.configs").setup({
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "jsx", "cpp" },
    -- Which query to use for finding delimiters
    query = "rainbow-parens",
    -- Highlight the entire buffer all at once
    strategy = require("ts-rainbow").strategy.global,
  },
})

require("lspconfig").yamlls.setup({
  filetypes = { "yaml", "yml", "yaml.docker-compose" },
})
