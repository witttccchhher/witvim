local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>n", ":NvimTreeToggle<cr>", { desc = " toggle nvim-tree" })

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "toggle DAP breakpoint" })
map("n", "<leader>dpr", function () require("dap-python").test_method() end, { desc = "start Python debugging" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

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

map("n", "<leader>t", function () Snacks.terminal.toggle() end, { desc = "toggle terminal" })
map("n", "<leader>l", function () Snacks.lazygit.open() end, { desc = "open lazygit" })

map("n", "<leader>y", "<cmd>%y+<CR>", { desc = "copy file" })

map("n", "q", "<cmd>qall<CR>", { desc = "quit" })
