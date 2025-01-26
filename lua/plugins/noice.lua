return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  opts = function ()
    return require("config.noice")
  end
}
