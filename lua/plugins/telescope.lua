return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        vim.keymap.set('n', '*', builtin.grep_string, { }) 
        vim.keymap.set('n', '<leader>gb', builtin.git_branches, { })
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, { })
        vim.keymap.set('n', '<leader>gs', builtin.git_status, { })

        vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { })
        vim.keymap.set('n', 'gr', builtin.lsp_references, { noremap = true, silent = true })
        vim.keymap.set('n', 'gd', builtin.lsp_definitions, { noremap = true, silent = true })
      end,
}
