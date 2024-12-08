return {
  "zeioth/garbage-day.nvim",
  dependencies = "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    aggressive_mode = true,
    grace_period = 60 * 3,
    wakeup_delay = 5,
    notifications = true
  }
}
