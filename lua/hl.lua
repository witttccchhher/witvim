local color = require("oldworld.palette")
local hl = vim.api.nvim_set_hl

-- render-markdown
hl(0, "RenderMarkdownHeadingBg", { fg = color.bg, bg = color.purple })

-- blink.cmp
hl(0, "BlinkCmpMenu", { fg = color.base07, bg = color.base00 })
hl(0, "BlinkCmpMenuSelection", { fg = "NONE", bg = color.base01 })

hl(0, "BlinkCmpLabelDeprecated", { fg = color.base0F, bg = "NONE", strikethrough = true })

hl(0, "BlinkCmpDoc", { fg = color.base07, bg = color.base00 })

hl(0, "BlinkCmpKindField", { fg = color.base00, bg = color.base0A })
hl(0, "BlinkCmpKindProperty", { fg = color.base00, bg = color.base0A })
hl(0, "BlinkCmpKindEvent", { fg = color.base00, bg = color.base0A })

hl(0, "BlinkCmpKindText", { fg = color.base00, bg = color.base0C })
hl(0, "BlinkCmpKindEnum", { fg = color.base00, bg = color.base0C })
hl(0, "BlinkCmpKindKeyword", { fg = color.base00, bg = color.base09 })

hl(0, "BlinkCmpKindConstant", { fg = color.base00, bg = color.base08 })
hl(0, "BlinkCmpKindConstructor", { fg = color.base00, bg = color.base08 })
hl(0, "BlinkCmpKindReference", { fg = color.base00, bg = color.base08 })

hl(0, "BlinkCmpKindFunction", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindStruct", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindClass", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindModule", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindOperator", { fg = color.base00, bg = color.base0E })

hl(0, "BlinkCmpKindVariable", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindFile", { fg = color.base00, bg = color.base0D })

hl(0, "BlinkCmpKindUnit", { fg = color.base00, bg = color.base0F })
hl(0, "BlinkCmpKindSnippet", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindFolder", { fg = color.base00, bg = color.base0F })

hl(0, "BlinkCmpKindMethod", { fg = color.base00, bg = color.base09 })
hl(0, "BlinkCmpKindValue", { fg = color.base00, bg = color.base09 })
hl(0, "BlinkCmpKindEnumNumber", { fg = color.base00, bg = color.base09 })

hl(0, "BlinkCmpKindInterface", { fg = color.base00, bg = color.base0B })
hl(0, "BlinkCmpKindColor", { fg = color.base00, bg = color.base0B })
hl(0, "BlinkCmpKindTypeParameter", { fg = color.base00, bg = color.base0B })
