return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run the first available formatter:
				javascript = { "prettierd", "prettier", stop_after_first = true },
				cpp = { "clang-format" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			vim.keymap.set("n", "<S-F>", ":lua require('conform').format()<CR>", { noremap = true, silent = true }),
			--[[ vim.api.nvim_set_keymap(
				"n",
				"<S-F>",
				":lua require('conform').format()<CR>",
				{ noremap = true, silent = true }
			), ]]
		})
	end,
}
