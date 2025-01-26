return {
  name = "Run Python file",
  builder = function ()
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "python" },
      args = { file },
      components = { { "on_output_quickfix", set_diagnostics = true, open = true }, "on_result_diagnostics", "default" }
    }
  end,
  condition = {
    filetype = { "python" }
  }
}
