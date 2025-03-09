return {
  render_modes = true,

  win_options = {
    showbreak = { default = "", rendered = "  " },
    breakindent = { default = false, rendered = true },
    breakindentopt = { default = "", rendered = "" }
  },
  quote = {
    enabled = true,
    render_modes = true,
    repeat_linebreak = true
  },
  checkbox = { enabled = false },
  code = {
    enabled = false,
    render_modes = true,
    sign = false,
    style = "full",
    position = "right",
    width = "block",
    language_pad = 2,
    left_pad = 2,
    right_pad = 4,
    border = "thin"
  },
  dash = {
    enabled = true,
    render_modes = true
  },
  heading = {
    enabled = true,
    render_modes = true,
    sign = false,
    icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
    width = "block",
    left_margin = 1,
    left_pad = 2,
    right_pad = 2,
    backgrounds = {
      "RenderMarkdownHeadingBg"
    },
    foregrounds = {
      "RenderMarkdownHeading"
    }
  },
  bullet = {
    enabled = true;
    render_modes = true;
    icons = { "•" }
  }
}
