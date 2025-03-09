return {
  "Bekaboo/dropbar.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },
  opts = function ()
    return require("config.dropbar")
  end
}
