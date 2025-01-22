local o = vim.o
local opt = vim.opt

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
o.laststatus = 0

vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg=0, fg="#c65f5f" })
vim.fn.sign_define("DapBreakpoint", { text=" ", texthl="DapBreakpoint" })

opt.fillchars:append { eob = " " }

local symbols = { Error = "", Info = "", Hint = "󰌵", Warn = "" }

for name, icon in pairs(symbols) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

vim.diagnostic.config({
  virtual_text = false
})
