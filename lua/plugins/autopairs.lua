return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = true,
  opts = function ()
    return require("config.autopairs")
  end
}
