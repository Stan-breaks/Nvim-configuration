local keymap = vim.keymap

local opts = { noremap = true, silent = true }

--Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--pane and window Navigations
keymap.set("n", "<C-h>", "C-w>h", opts)               -- Navigate Left
keymap.set("n", "<C-j>", "C-w>j", opts)               -- Navigate Down
keymap.set("n", "<C-k>", "C-w>k", opts)               -- Navigate Up
keymap.set("n", "<C-l>", "C-w>l", opts)               -- Navigate Right
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts) -- Navigate Left
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts) -- Navigate Down
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts) -- Navigate Up
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts) -- Navigate Right

-- widow Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)          -- Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts)           -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

--noice
keymap.set("n", "<leader>ds", ":NoiceDismiss<CR>")
