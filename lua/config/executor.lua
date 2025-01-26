return {
  use_split = true,
  split = {
    position = "bottom",
    size = math.floor(vim.o.lines * 1/5)
  },
  preset_commands = {
    ["Projects/python"] = {
      "python $E_FN",
    },
    ["Projects/go"] = {
      "go $E_FN",
    }
  }
}
