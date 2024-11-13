return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				buffer_close_icon = "",
				mode = "buffers",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
						padding = 0,
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				indicator = {
					icon = "  ", -- this should be omitted if indicator style is not 'icon'
					style = "icon",
				},
				numbers = function(opts)
					return string.format("%s", opts.lower(opts.ordinal))
				end,

				-- separator_style = "slope"
			},
		})
		vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>c", ":BufferLinePickClose<CR>", { noremap = true, silent = true })

		vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader><Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>\\", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
	end,
}
