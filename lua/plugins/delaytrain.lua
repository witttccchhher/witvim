return {
  "ja-ford/delaytrain.nvim",
  opts = function ()
    require("delaytrain").setup({
      delay_ms = 1000,
      grace_period = 1,
      keys = { ["nv"] = {"<Left>", "<Down>", "<Up>", "<Right>"} }
    })
  end
}
