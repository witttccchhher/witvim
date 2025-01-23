return {
  "lewis6991/gitsigns.nvim",
  config = function (_, opts)
    require("gitsigns").setup(opts)
  end,
  opts = function ()
    return require("config.gitsigns")
  end
}
