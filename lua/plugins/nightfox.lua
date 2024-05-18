local config = function()
	vim.cmd("colorscheme nightfox")
end

return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 999,
	config = config,
}
