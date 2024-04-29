return
{
    "neovim/nvim-lspconfig",
    dependencies = {
        "nvim-lua/plenary.nvim"
        event = "VeryLazy"
    },
    config = function()
        require'lspconfig'.lua_ls.setup({ autostart = true })
    end
}
