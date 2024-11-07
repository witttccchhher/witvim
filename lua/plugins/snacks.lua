return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = false },
    bufdelete = { enabled = false },
    debug = { enabled = false },
    git = { enabled = false },
    gitbrowse = { enabled = false },
    lazygit = { enabled = true },
    notify = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = {
      enabled = true,
      folds = {
        open = true
      }
    },
    terminal = { enabled = true },
    toggle = { enabled = false },
    win = { enabled = false },
    words = { enabled = false }
  }
}
