return {
	"michaelrommel/nvim-silicon",
	lazy = true,
  opts = require "config.silicon",
  config = function(_, opts)
		require("nvim-silicon").setup(opts)
	end
}
