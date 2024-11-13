return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		config = function()
			require("Comment").setup({
				-- toggler = {
				-- 	---Line-comment toggle keymap
				-- 	line = "gcc",
				-- 	---Block-comment toggle keymap
				-- 	block = "gbc",
				-- },
			})
		end,
	},
	{
		"smoka7/hop.nvim",
		version = "*",
		opts = {
			keys = "etovxqpdygfblzhckisuran",
		},
	},
}
