return {
  "saghen/blink.cmp",
  lazy = false,
  version = "*",
  dependencies = "rafamadriz/friendly-snippets",
  -- dependencies = {
  --   "L3MON4D3/LuaSnip",
  --   version = "v2.*",
  --   dependencies = "rafamadriz/friendly-snippets",
  --   opts = { history = true, updateevents = "TextChanged,TextChangedI" },
  --   config = function(_, opts)
  --     require("luasnip").config.set_config(opts)
  --     require("config.luasnip")
  --   end
  -- },
  opts = function()
    return require("config.blink")
  end
}
