local color = require('base16-colorscheme').colors
local hl = vim.api.nvim_set_hl

-- return {
--     base00 = '#1e1e28', base01 = '#1a1826', base02 = '#302d41', base03 = '#575268',
--     base04 = '#6e6c7c', base05 = '#d7dae0', base06 = '#f5e0dc', base07 = '#c9cbff',
--     base08 = '#f28fad', base09 = '#f8bd96', base0A = '#fae3b0', base0B = '#abe9b3',
--     base0C = '#b5e8e0', base0D = '#96cdfb', base0E = '#ddb6f2', base0F = '#f2cdcd'
-- }

-- hl(0, "BufferLineIndicatorSelected", { fg = color.base0E })

-- snacks.indent
hl(0, "SnacksIndentScope", { fg = color.base07, bg = "NONE" })
hl(0, "SnacksIndent1", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent2", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent3", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent4", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent5", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent6", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent7", { fg = color.base08, bg = color.base00 })
hl(0, "SnacksIndent8", { fg = color.base08, bg = color.base00 })

-- tiny-inline-diagnostics
hl(0, "TinyDiagArrow", { fg = color.base07 })

-- blink.cmp
hl(0, "BlinkCmpMenu", { fg = color.base07, bg = "#191919" })
hl(0, "BlinkCmpMenuSelection", { fg = "NONE", bg = color.base01 })

hl(0, "BlinkCmpLabelDeprecated", { fg = color.base0F, bg = "NONE", strikethrough = true })

hl(0, "BlinkCmpDoc", { fg = color.base07, bg = "#191919" })

hl(0, "BlinkCmpKindField", { fg = color.base00, bg = color.base0A })
hl(0, "BlinkCmpKindProperty", { fg = color.base00, bg = color.base0A })
hl(0, "BlinkCmpKindEvent", { fg = color.base00, bg = color.base0A })

hl(0, "BlinkCmpKindText", { fg = color.base00, bg = color.base0B })
hl(0, "BlinkCmpKindEnum", { fg = color.base00, bg = color.base0B })
hl(0, "BlinkCmpKindKeyword", { fg = color.base00, bg = color.base0B })

hl(0, "BlinkCmpKindConstant", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindConstructor", { fg = color.base00, bg = color.base0E })
hl(0, "BlinkCmpKindReference", { fg = color.base00, bg = color.base0E })

hl(0, "BlinkCmpKindFunction", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindStruct", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindClass", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindModule", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindOperator", { fg = color.base00, bg = color.base0D })

hl(0, "BlinkCmpKindVariable", { fg = color.base00, bg = color.base08 })
hl(0, "BlinkCmpKindFile", { fg = color.base00, bg = color.base08 })

hl(0, "BlinkCmpKindUnit", { fg = color.base00, bg = color.base0F })
hl(0, "BlinkCmpKindSnippet", { fg = color.base00, bg = color.base0F })
hl(0, "BlinkCmpKindFolder", { fg = color.base00, bg = color.base0F })

hl(0, "BlinkCmpKindMethod", { fg = color.base00, bg = color.base0F })
hl(0, "BlinkCmpKindValue", { fg = color.base00, bg = color.base0F })
hl(0, "BlinkCmpKindEnumNumber", { fg = color.base00, bg = color.base0F })

hl(0, "BlinkCmpKindInterface", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindColor", { fg = color.base00, bg = color.base0D })
hl(0, "BlinkCmpKindTypeParameter", { fg = color.base00, bg = color.base0D })
