return {
    {
        "williamboman/mason.nvim",
        priority = 999,
        config = function()
            require("mason").setup({
                ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
					border = "rounded",
				},
        })
    end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        priority = 998,
        config = function()
            require("mason-lspconfig").setup()
        end,
    }
}
