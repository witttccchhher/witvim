local autocmd = vim.api.nvim_create_autocmd

autocmd({ "VimEnter" }, { callback = function ()
  require("nvim-tree.api").tree.toggle({
    current_window = false,
    focus = false
  })
end })
-- user event that loads after UIEnter + only if file buf is there
