return {
  "google/executor.nvim",
  cmd = { "ExecutorRun", "ExecutorRunWithNewCommand", "ExecutorToggleDetail" },
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("executor").setup({
      use_split = true,
      split = {
        position = "bottom",
        size = math.floor(vim.o.lines * 1/5)
      }
    })
  end
}
