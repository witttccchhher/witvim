return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach", -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  config = function()
    require("tiny-inline-diagnostic").setup({
      hi = {
        arrow = "TinyDiagArrow",
        background = require("base16-colorscheme").colors.base00
      }
    })
  end
}
