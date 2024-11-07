return {
	"nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "pnx/lualine-lsp-status" },

	opts = function(_, opts)
    local colors = require("base16-colorscheme").colors
    local clients_lsp = function ()
      local bufnr = vim.api.nvim_get_current_buf()

      local clients = vim.lsp.buf_get_clients(bufnr)
      if next(clients) == nil then
        return ''
      end

      local c = {}
      for _, client in pairs(clients) do
        table.insert(c, client.name)
      end
      return table.concat(c, '|')
    end
    local sep = {
      "%=",
      color = { fg = colors.base00, bg = "None" },
    }
    opts.options = {
      section_separators = "",
      component_separators = ""
    }
		opts.sections = {
      lualine_a = {
        {
          "branch",
          fmt = function(str)
            if str == '' or str == nil then
              return ' not git repository'
            end
            return str
          end,
          icon = "",
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          }
        }
      },
      lualine_b = { sep  },
      lualine_c = { sep },
      lualine_x = { sep },
      lualine_y = {
        {
          "lsp-status",
          icons = {
            active = "󰪩",
            inactive = "󰴀"
          },
          show_count = false,
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          },
          colors = {
            active = { fg = colors.base00 },
            inactive = { fg = colors.base00 },
            count = { fg = colors.base00 }
          }
        }
      },
      lualine_z = {
        {
          clients_lsp,
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          }
        }
      }
    }
    opts.inactive_sections = {
      lualine_a = {
        {
          "branch",
          fmt = function(str)
            if str == '' or str == nil then
              return ' not git repository'
            end
            return str
          end,
          icon = "",
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          }
        }
      },
      lualine_b = { sep  },
      lualine_c = { sep },
      lualine_x = { sep },
      lualine_y = {
        {
          "lsp-status",
          icons = {
            active = "󰪩",
            inactive = "󰴀"
          },
          show_count = false,
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          },
          colors = {
            active = { fg = colors.base00 },
            inactive = { fg = colors.base00 },
            count = { fg = colors.base00 }
          }
        }
      },
      lualine_z = {
        {
          clients_lsp,
          color = {
            bg = colors.base0C,
            gui = "bold",
            fg = colors.base00
          }
        }
      }
    }
	end
}
