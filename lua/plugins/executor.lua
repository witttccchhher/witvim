return {
  "google/executor.nvim",
  cmd = { "ExecutorRun", "ExecutorRunWithNewCommand", "ExecutorToggleDetail" },
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  opts = function ()
    return require("config.executor")
  end
}
