return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  opts = {
    inlay_hints = { enabled = false }
  },
  config = function ()
    require("config.lspconfig")
  end
}
