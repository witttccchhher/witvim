return {
	"michaelrommel/nvim-silicon",
	cmd = "Silicon",
	opts = {
    disable_defaults = true,
    language = function()
	   	return vim.bo.filetype
	  end,
    window_title = function()
	    return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
	  end,
	}
}
