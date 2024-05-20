return {
	"windwp/nvim-ts-autotag",
	lazy = false,
	opts = {},
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
