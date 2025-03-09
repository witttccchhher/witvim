return {
  animate = { enabled = false },
  bigfile = { enabled = false },
  bufdelete = { enabled = false },
  dashboard = { enabled = true },
  debug = { enabled = false },
  dim = { enabled = false },
  explorer = { enabled = true },
  git = { enabled = false },
  gitbrowse = { enabled = false },
  image = { enabled = false },
  indent = {
    enabled = true,
    char = "│",
    hl = {
      "SnacksIndent1",
      "SnacksIndent2",
      "SnacksIndent3",
      "SnacksIndent4",
      "SnacksIndent5",
      "SnacksIndent6",
      "SnacksIndent7",
      "SnacksIndent8"
    }
  },
  input = { enabled = true },
  layout = { enabled = false },
  lazygit = { enabled = false },
  notify = { enabled = true },
  notifier = {
    enabled = true,
    timeout = 5000,
    width = { max = 0.5 }
  },
  picker = { enabled = false },
  profiler = { enabled = false },
  quickfile = { enabled = true },
  rename = { enabled = false },
  scope = { enabled = false },
  scratch = { enabled = false },
  scroll = { enabled = false },
  statuscolumn = { enabled = false },
  terminal = { enabled = false },
  toggle = { enabled = false },
  util = { enabled = false },
  win = { enabled = false },
  words = { enabled = false },
  zen = { enabled = false },

  styles = {
    input = {
      backdrop = false,
      keys = {
        n_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "n", expr = true },
        i_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "i", expr = true }
      }
    }
  }
}
