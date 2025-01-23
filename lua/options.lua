local o = vim.o
local opt = vim.opt
local g = vim.g

o.cmdheight = 0
o.number = true
o.relativenumber = false
o.mouse = ""
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

opt.fillchars:append { eob = " " }


local names = { "Error", "Info", "Hint", "Warn" }
for index, name in ipairs(names) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = "", texthl = hl })
end

vim.diagnostic.config({
  virtual_text = false
})
