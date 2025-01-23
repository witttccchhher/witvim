return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup()
  end,
  opts = function ()
    require("config.gitsigns")
  end
}
