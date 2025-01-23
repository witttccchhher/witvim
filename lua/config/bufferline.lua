local color = require("base16-colorscheme").colors

return {
  highlights = {
    fill = {
      bg = color.base00,
      fg = color.base00
    },
    background = {
      bg = color.base00,
      fg = color.base05
    },
    buffer_selected = {
      bg = color.base02,
      fg = color.base05
    },
    indicator_selected = {
      fg = color.base0E,
      bg = color.base00
    }
  },
  options = {
    always_show_bufferline = true,
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
