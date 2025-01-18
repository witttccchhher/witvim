return {
  "andrewferrier/wrapping.nvim",
  ft = "markdown",
  config = function()
    require("wrapping").setup({
      create_keymaps = false
    })
  end
}
