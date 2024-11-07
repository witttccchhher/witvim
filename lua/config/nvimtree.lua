return {
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    width = 40,
    preserve_window_proportions = true,
  },
  renderer = {
    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      glyphs = {
        default = "󰈔",
        folder = {
          default = "󰉋",
          empty = "󰉖",
          empty_open = "󱥿",
          open = "󱥾",
          symlink = "󱧮"
        },
        git = { unmerged = "" }
      },
    },
  },
}
