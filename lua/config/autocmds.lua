-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		local efm = vim.lsp.get_clients({ name = "efm" })

		if vim.tbl_isempty(efm) then
			return
		end

		vim.lsp.buf.format({ name = "efm", async = true })
	end,
})
--markdown autoformatting

vim.api.nvim_create_augroup("Markdown", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 101
	end,
	group = "Markdown",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.md",
	callback = function()
		vim.api.nvim_command("normal! gg5jVGgq")
	end,
	group = "Markdown",
})
