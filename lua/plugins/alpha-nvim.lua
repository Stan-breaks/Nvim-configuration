local config = function()
	require("alpha").setup(require("alpha.themes.theta").config)
end

return {
	"Stan-breaks/alpha-nvim",
	event = "BufWinEnter",
	config = config,
}
