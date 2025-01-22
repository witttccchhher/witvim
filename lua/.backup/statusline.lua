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
    local deftheme = { fg = colors.base00, bg = colors.base0D, gui = "bold" }
    local septheme = { fg = colors.base00, bg = "#202020" }
    local sep = {
      "%="
    }
    opts.options = {
      section_separators = "",
      component_separators = "",
      globalstatus = true,
      always_divide_middle = false,
      theme = {
        normal = {
          a = deftheme,
          b = septheme,
          c = septheme,
          x = septheme,
          y = septheme,
          z = deftheme
        },
        inactive = {
          a = deftheme,
          b = septheme,
          c = septheme,
          x = septheme,
          y = septheme,
          z = deftheme
        }
      }
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
          icon = ""
        }
      },
      lualine_b = { sep },
      lualine_c = { sep },
      lualine_x = { sep },
      lualine_y = { sep },
      lualine_z = {
        {
          "lsp-status",
          icons = {
            active = "󰪩",
            inactive = "󰴀"
          },
          show_count = false,
          colors = {
            active = { bg = colors.base0D, gui = "bold", fg = colors.base00 },
            inactive = { bg = colors.base0D, gui = "bold", fg = colors.base00 },
            count = { bg = colors.base0D, gui = "bold", fg = colors.base00 }
          }
        },
        {
          clients_lsp
        }
      }
    }
	end
}
