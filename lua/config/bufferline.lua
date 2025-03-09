local color = require("oldworld")

return {
  highlights = {
    fill = {
      bg = color.bg,
      fg = color.bg
    },
    background = {
      bg = color.bg,
      fg = color.bg
    },
    buffer_selected = {
      bg = color.bg,
      fg = color.subtext2
    },
    indicator_selected = {
      fg = color.purple,
      bg = color.bg
    }
  },
  options = {
    always_show_bufferline = false,
    show_close_icon = false,
    show_buffer_close_icons = false,
    truncate_names = false,
    tab_size = 0,
    indicator = { icon = "▐", style = "icon" },
    separator_style = "thin",
    offsets = {
      { filetype = "neo-tree", separator = false, text = "" },
      { filetype = "DiffviewFiles", separator = false, text = "" }
    },

    name_formatter = function(buf)
      return buf.name:match("(.+)%..+$")
    end
  }
}
