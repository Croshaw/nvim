return { 
    "neovim/nvim-lspconfig",
    priority = 997,
    config = function()
        local lspconfig = require'lspconfig'                       
        lspconfig.lua_ls.setup{}
        lspconfig.clangd.setup{}
        lspconfig.ts_ls.setup{}
    end,
}
