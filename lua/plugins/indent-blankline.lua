return {
  "lukas-reineke/indent-blankline.nvim",
  event = "User FilePost",
  opts = {
    indent = {
      char = "▏"
    },
    scope = {
      show_start = false,
      show_end = false
    }
  },
  config = function(_, opts)
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
    require("ibl").setup(opts)
  end
}
