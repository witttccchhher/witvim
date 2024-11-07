return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true }
  },
  config = function ()
    require("config.lspconfig")
  end
}
