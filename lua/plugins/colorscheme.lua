return {
  -- "RRethy/base16-nvim",
  -- config = function ()
  --   require("config.colorscheme")
  -- end
  "dgox16/oldworld.nvim",
  lazy = false,
  priority = 1000,
  config = function ()
    require("oldworld").setup({
      variant = "oled",
      styles = {
        comments = { italic = true, bold = true },
        keywords = { italic = true, bold = true },
        identifiers = { italic = false, bold = true },
        functions = { italic = false, bold = true },
        variables = { italic = false, bold = true },
        booleans = { italic = true, bold = true }
      },
      integrations = {
        neo_tree = true
      }
    })
    vim.cmd.colorscheme("oldworld")
  end
}
