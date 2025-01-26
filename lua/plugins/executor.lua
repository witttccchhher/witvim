return {
  "google/executor.nvim",
  cmd = { "ExecutorShowPresets", "ExecutorRun", "ExecutorRunWithNewCommand", "ExecutorToggleDetail" },
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  opts = function ()
    return require("config.executor")
  end
}
