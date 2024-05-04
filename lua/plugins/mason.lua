return 
{
    "williamboman/mason.nvim",
    event = "VeryLazy",
    dependencies = {"williamboman/mason-lspconfig.nvim"},

    config = function()
        require("mason").setup(settings)
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "gopls"
            },
            automatic_installation = true,
        })
    end,
}
