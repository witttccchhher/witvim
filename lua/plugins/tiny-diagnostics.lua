return {
  "rachartier/tiny-inline-diagnostic.nvim",
  priority = 1000,
  opts = function ()
    return require("config.tiny-diagnostics")
  end
}
