return {
  keymap = {
    ["<CR>"] = { "accept", "fallback" },

    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<Up>"] = { "fallback" },
    ["<Down>"] = { "fallback" },

    ["`"] = { "hide", "fallback" },
    ["<C-j>"] = { "scroll_documentation_down", "fallback" },
    ["<C-k>"] = { "scroll_documentation_up", "fallback" }
  },
  appearance = {
    kind_icons = {
      Text = "",
      Method = "󰊕",
      Function = "󰊕",
      Constructor = "󰆧",
      Field = "",
      Variable = "󰮄",
      Class = "",
      Interface = "",
      Module = "󰅩",
      Property = "",
      Unit = "󰪚",
      Value = "󰦨",
      Enum = "󰦨",
      Keyword = "󰻾",
      Snippet = "󱄽",
      Color = "",
      File = "󱀫",
      Reference = "󱀫",
      Folder = "󰉋",
      EnumMember = "󰦨",
      Constant = "󰏿",
      Struct = "󱡠",
      Event = "",
      Operator = "󰪚",
      TypeParameter = "󰬛"
    }
  },
  completion = {
    trigger = {
      show_on_trigger_character = false
    },
    accept = {
      auto_brackets = {
        enabled = true
      }
    },
    menu = {
      enabled = true,
      scrollbar = false,
      draw = {
        padding = 0,
        components = {
          kind_icon = {
            text = function (ctx)
              return " " .. ctx.kind_icon .. ctx.icon_gap .. " "
            end
          }
        }
      }
    },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 1000,
      window = {
        -- border = "none"
        scrollbar = false
      }
    },
    ghost_text = { enabled = true }
  },
  sources = {
    default = { "lsp", "path", "buffer" },
    cmdline = {}
  }
}
