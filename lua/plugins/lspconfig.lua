return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  opts = {
    diagnostics = {
      underline = false,
      update_on_insert = false
    },
    inlay_hints = { enabled = true }
  },
  config = function ()
    require("config.lspconfig")
  end
}
