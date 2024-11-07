local color = require('base16-colorscheme').colors
local hl = vim.api.nvim_set_hl

hl(0, "PmenuSel", { bg = color.base03, fg = "NONE" })
hl(0, "Pmenu", { fg = color.base07, bg = color.base03 })

hl(0, "CmpItemAbbrDeprecated", { fg = color.base0D, bg = "NONE", strikethrough = true })
hl(0, "CmpItemAbbrMatch", { fg = color.base0C, bg = "NONE", bold = true })
hl(0, "CmpItemAbbrMatchFuzzy", { fg = color.base0C, bg = "NONE", bold = true })
hl(0, "CmpItemMenu", { fg = color.base05, bg = "NONE", italic = true })

hl(0, "CmpItemKindField", { fg = color.base00, bg = color.base08 })
hl(0, "CmpItemKindProperty", { fg = color.base00, bg = color.base08 })
hl(0, "CmpItemKindEvent", { fg = color.base00, bg = color.base08 })

hl(0, "CmpItemKindText", { fg = color.base00, bg = color.base0B })
hl(0, "CmpItemKindEnum", { fg = color.base00, bg = color.base0B })
hl(0, "CmpItemKindKeyword", { fg = color.base00, bg = color.base0B })

hl(0, "CmpItemKindConstant", { fg = color.base00, bg = color.base0A })
hl(0, "CmpItemKindConstructor", { fg = color.base00, bg = color.base0A })
hl(0, "CmpItemKindReference", { fg = color.base00, bg = color.base0A })

hl(0, "CmpItemKindFunction", { fg = color.base00, bg = color.base0E })
hl(0, "CmpItemKindStruct", { fg = color.base00, bg = color.base0E })
hl(0, "CmpItemKindClass", { fg = color.base00, bg = color.base0E })
hl(0, "CmpItemKindModule", { fg = color.base00, bg = color.base0E })
hl(0, "CmpItemKindOperator", { fg = color.base00, bg = color.base0E })

hl(0, "CmpItemKindVariable", { fg = color.base00, bg = color.base0D })
hl(0, "CmpItemKindFile", { fg = color.base00, bg = color.base0D })

hl(0, "CmpItemKindUnit", { fg = color.base00, bg = color.base09 })
hl(0, "CmpItemKindSnippet", { fg = color.base00, bg = color.base09 })
hl(0, "CmpItemKindFolder", { fg = color.base00, bg = color.base09 })

hl(0, "CmpItemKindMethod", { fg = color.base00, bg = color.base0C })
hl(0, "CmpItemKindValue", { fg = color.base00, bg = color.base0C })
hl(0, "CmpItemKindEnumMember", { fg = color.base00, bg = color.base0C })

hl(0, "CmpItemKindInterface", { fg = color.base00, bg = color.base0F })
hl(0, "CmpItemKindColor", { fg = color.base00, bg = color.base0F })
hl(0, "CmpItemKindTypeParameter", { fg = color.base00, bg = color.base0F })

-- hl(0, "Folded", { fg = nil })
