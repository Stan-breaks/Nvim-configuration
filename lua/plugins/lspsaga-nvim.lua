local config = function()
	require("lspsaga").setup({
		--keybinds for navigation in lsgsaga window
		move_in_saga = { prev = "<C-k>", next = "<C-j" },
		--use enter to open file with finder
		finder_action_keys = {
			open = "<CR>",
		},
		--use enter to open file with definition preview
		definition_action_keys = {
			edit = "<CR>",
		},
	})
end

return {
	"glepnir/lspsaga.nvim",
	lazy = false,
	config = config,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
}
