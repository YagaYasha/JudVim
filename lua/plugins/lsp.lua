return
{
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require'lspconfig'.lua_ls.setup({})
    end
}
