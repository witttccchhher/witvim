return {
  "Wansmer/langmapper.nvim",
  lazy = false,
  priority = 1,
  config = function ()
    require("langmapper").setup()
    require("langmapper").automapping({
      global = true,
      buffer = true
    })
  end
}
