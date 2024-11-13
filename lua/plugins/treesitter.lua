return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
    require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "cpp", "lua", "css", "html", "tsx", "bash", "dockerfile", "javascript", "json", "typescript", "c_sharp", },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = {
    enable = true,
    }
}
end,
}