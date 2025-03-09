return {
  sync_root_with_cwd = true,
  auto_reload_on_write = true,
  disable_netrw = false,
  filters = {
    custom = {
      "^.git$",
      "^.backups$",
      "^.cache$",
      "^.cargo$",
      "^.compose-cache$",
      "^.gnupg$",
      "^.icons$",
      "^.lutgen$",
      "^.lyrics$",
      "^.mozilla$",
      "^.nix-defexpr$",
      "^.nix-profile$",
      "^.npm$",
      "^.pki$",
      "^.var$",
      "^.bash_history$",
      "^.gtkrc-2.0$",
      "^.nano-recentf$",
      "^.nano-savehist$",
      "^.python_history$",
      "^.viminfo$",
      "^.yarnrc$",
      "^.zcompdump$",
      "^.zcompdump.nixos.12524$",
      "^.zcompdump.nixos.28737$"
    }
  },
  update_focused_file = {
    enable = true,
    update_root = false
  },
  view = {
    preserve_window_proportions = true,
    side = "right",
    width = 40,
    float = { open_win_config = { border = "none" } }
  },
  renderer = {
    highlight_git = "none",
    highlight_opened_files = "none",
    indent_width = 3,
    indent_markers = { enable = true },
    icons = {
      padding = " ",
      glyphs = {
        default = "󰡯",
        symlink = "󰪹",
        bookmark = "",
        modified = "",
        hidden = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "󰉋",
          open = "󰝰",
          empty = "󰉖",
          empty_open = "󰉖",
          symlink = "󱧮",
          symlink_open = "󱧮"
        },
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = ""
        }
      }
    }
  }
}
