local config = function()
    require("nvim-treesitter.configs").setup({
        indent = {
            enable = true,
        },
        autotag = {
            enable = true,
        },
        ensure_installed = {
            "markdown",
            "html",
            "json",
            "css",
            "bash",
            "lua",
            "python",
            "yaml",
            "javascript",
            "go",
            "gomod",
            "gosum",
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
            },
        })
end

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = config,
}

