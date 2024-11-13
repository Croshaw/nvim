function IsNeotreeFocused()
	-- Get our current buffer number
	local bufnr = vim.api.nvim_get_current_buf and vim.api.nvim_get_current_buf() or vim.fn.bufnr()
	-- Get all the available sources in neo-tree
	for _, source in ipairs(require("neo-tree").config.sources) do
		-- Get each sources state
		local state = require("neo-tree.sources.manager").get_state(source)
		-- Check if the source has a state, if the state has a buffer and if the buffer is our current buffer
		if state and state.bufnr and state.bufnr == bufnr then
			return true
		end
	end
	return false
end

function ToggleNeoTree()
	local manager = require("neo-tree.sources.manager")
	local renderer = require("neo-tree.ui.renderer")

	local state = manager.get_state("filesystem")
	local should_close = renderer.window_exists(state) and IsNeotreeFocused()
	if should_close then
		vim.cmd("Neotree close left reveal")
	else
		vim.cmd("Neotree left reveal")
	end
end

-- NeoTree
vim.keymap.set("n", "<leader>E", ":Neotree toggle float reveal<CR>")
vim.keymap.set("n", "<leader>e", ToggleNeoTree, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>o", ":Neotree toggle float git_status<CR>")
