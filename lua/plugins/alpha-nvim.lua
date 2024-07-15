local config = function()
	require("alpha").setup(require("alpha.themes.dashboard").config)
end

return {
	"Stan-breaks/alpha-nvim",
	event = "BufWinEnter",
	config = config,
}
