local keymap = vim.keymap

local config = function ()
  local telescope = require('telescope')
  telescope.setup({
    defaults = {
     mappings = {
       i = {
         ["<C-k>"] = "move_selection_previous",
         ["<C-j>"] = "move_selection_next"
       },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      hidden = true,
    },
    live_grep = {
      theme = "dropdown",
      previewer = false,
    },
    find_buffers = {
      theme = "dropdown", previewer = false,
    },
  },
})
end

local set_keys = function()
  keymap.set("n", " <leader>fk", ":Telescope Keymaps<CR>")
  keymap.set("n", " <leader>fh", ":Telescope help_tags<CR>")
  keymap.set("n", " <leader>ff", ":Telescope find_files<CR>")
  keymap.set("n", " <leader>fa", ":Telescope <CR>")
  keymap.set("n", " <leader>fg", ":Telescope live_grep<CR>")
  keymap.set("n", " <leader>fb", ":Telescope buffers<CR>")
end

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.3',
  lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    config()
    set_keys()
  end,
}

