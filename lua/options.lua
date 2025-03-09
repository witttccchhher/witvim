local names = { "Error", "Info", "Hint", "Warn" }
for _, name in pairs(names) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = "", texthl = hl })
end

vim.diagnostic.config({
  virtual_text = false
})

local function escape(str)
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]
local langmap = vim.fn.join({
  escape(ru_shift) .. ";" .. escape(en_shift),
  escape(ru) .. ";" .. escape(en),
}, ",")

local options = {
  backup = false,
  colorcolumn = "99999",
  signcolumn = "yes",
  cmdheight = 0,
  number = true,
  numberwidth = 4,
  relativenumber = true,
  mouse = "",
  conceallevel = 1,
  cursorline = false,
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  termguicolors = true,
  clipboard = "unnamedplus",
  undofile = true,
  swapfile = false,
  laststatus = 0,
  langmap = langmap,
  fillchars = {
    eob = " "
  }
}

for name, value in pairs(options) do
  local ok, _ = pcall(vim.api.nvim_get_option_info2, name, { })
  if ok then
    vim.opt[name] = value
  else
    vim.notify("Option " .. name .. " is not supported", vim.log.levels.WARN)
  end
end
