local map = vim.keymap.set
-- map("n", ";", function ()
--   Snacks.input.input(
--     {
--       prompt = "Run command",
--       icon = ""
--     },
--     function (command)
--       vim.cmd(command or "")
--     end
--   )
-- end, { desc = "CMD enter command mode" })
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>sn", function ()
  Snacks.notifier.show_history()
end, { desc = "Show notifications history" })

map("n", "<leader>n", function () vim.cmd("NvimTreeToggle") end, { desc = "Toggle nvim-tree" })

map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

map("n", "<leader>b", function () vim.cmd("enew") end, { desc = "Buffer new" })
map("n", "<tab>", function () vim.cmd("bn") end, { desc = "Buffer goto next" })
map("n", "<S-tab>", function () vim.cmd("bp") end, { desc = "Buffer goto prev" })
map("n", "<leader>x", function () vim.cmd("bd") end, { desc = "Buffer close" })

map("n", "<leader>/", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

map("n", "<leader>y", function () vim.cmd("%y+") end, { desc = "Copy file" })

map("n", "q", function () vim.cmd("qall") end, { desc = "Quit" })

map("n", "<leader>er", function () require("executor").commands.run() end, { desc = "Executor run" })
map("n", "<leader>ewn", function () require("executor").commands.run_with_new_command() end, { desc = "Executor run with new command" })
map("n", "<leader>et", function () require("executor").commands.toggle_detail() end, { desc = "Executor toggle" })
map("n", "<leader>eb", function () require("executor").commands.show_presets() end, { desc = "Executor show presets" })

map("n", "<leader>iht", function () vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, { desc = "Toggle inlay hints" })

map("n", "<Esc>", function () vim.cmd("noh") end, { desc = "Unhiglight all" })

map("n", "<leader>z", function () require("true-zen.ataraxis").toggle() end, { desc = "Zen mode" })

local tc = require("telescope.builtin")
map("n", "<leader>tff", tc.find_files, { desc = "Telescope find files" })
map("n", "<leader>tlg", tc.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>tbs", tc.buffers, { desc = "Telescope show buffers" })
map("n", "<leader>tht", tc.help_tags, { desc = "Telescope open help" })
map("n", "<leader>tof", tc.oldfiles, { desc = "Telescope show old files" })
map("n", "<leader>td", function ()
  tc.diagnostics({bufnr = 0})
end, { desc = "Telescope open diagnostics" })

map("n", "<leader>gf", function () require("grug-far").open() end, { desc = "Open Grug Far" })

map("n", "j", "gj", { desc = "Move cursor up" })
map("n", "k", "gk", { desc = "Move cursor down" })

map("i", "<C-s>", function () vim.cmd("w") end, { desc = "Save file" })
map("n", "<C-s>", function () vim.cmd("w") end, { desc = "Save file" })

map("v", "<leader>ss", function() require("nvim-silicon").clip() end, { desc = "Create screenshot" })
