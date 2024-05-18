local config = function()
	require("stand").setup({
		minute_interval = 60,
	})
end

return {
	"mvllow/stand.nvim",
	config = config,
	lazy = false,
}
