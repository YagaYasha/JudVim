return {
    {
        "nvim-treesitter/nvim-treesitter",
        enable = true,
        lazy = false,
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "go",
                    "lua",
                    "json",
                },
                ignore_install = {},
                highlight = {
                    enable = true,
                    disable = { "help" },
                },
            })
        end,
    },
}
