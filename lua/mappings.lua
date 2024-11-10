local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>n", ":NvimTreeToggle<cr>")

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
map("n", "<leader>dpr", function () require("dap-python").test_method() end)

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
map("n", "<tab>", "<cmd>bn<CR>", { desc = "buffer goto next" })
map("n", "<S-tab>", "<cmd>bp<CR>", { desc = "buffer goto prev" })
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "buffer close" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

Snacks.config.style("terminal", {
  bo = { filetype = "snacks_terminal" }, wo = {}, keys = {
    hideTerm = {
      "<Esc>",
      function(self)
        Snacks.terminal.toggle()
      end,
      mode = "t",
      expr = true
    }
  }
})

map("n", "<leader>t", function () Snacks.terminal.toggle() end)
map("n", "<leader>l", function () Snacks.lazygit.open() end)

map("n", "<CR>", "za")

map("i", "io", "<Esc>")
map("i", "oi", "<Esc>")

map("n", "<leader>y", "<cmd>%y+<CR>")
