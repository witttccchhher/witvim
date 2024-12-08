local o = vim.o

o.cmdheight = 0
o.number = true
o.relativenumber = false
-- o.mouse = ""
o.conceallevel = 1
o.cursorline = false
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.termguicolors = true
o.clipboard = "unnamedplus"
o.undofile = true
o.swapfile = false
o.foldmethod = "expr"
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldtext = ""
o.foldlevel = 99
o.foldlevelstart = 1
o.foldnestmax = 4
o.foldtext = ""

vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg=0, fg="#c65f5f" })
vim.fn.sign_define("DapBreakpoint", { text=" ", texthl="DapBreakpoint" })

require("cmp").setup { experimental = { ghost_text = true } }

local symbols = { Error = "", Info = "", Hint = "󰌵", Warn = "" }

for name, icon in pairs(symbols) do
	local hl = "DiagnosticSign" .. name
	vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

vim.diagnostic.config({
  underline = false,
  virtual_text = { spacing = 1, prefix = "󱓻", suffix = " " }
})
