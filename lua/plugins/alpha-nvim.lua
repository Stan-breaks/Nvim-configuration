return {
	"Stan-breaks/alpha-nvim",
	event = "BufWinEnter",
	config = function()
		require("alpha").setup(require("alpha.themes.theta").config)
	end,
}
