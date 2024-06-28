
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr) 
        local map = function(mode, key, action)
            vim.keymap.set(mode, key, action, { buffer = bufnr, 
            silent = true, 
            noremap = true 
        })
        end
        map("n", "K", ":Lspsaga hover _doc<CR>")
        map("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
        map("n", "gd", ":Lspsaga goto_definition<CR>")
        map("n", "<leader>rf", ":Lspsaga finder<CR>")
        map("n", "<leader>ca", ":Lspsaga rename<CR>")
        map("n", "<leader>o", ":Lspsaga outline<CR>")
        map("n", "<leader>rn", ":Lspsaga rename<CR>")
end

return 
{
    "neovim/nvim-lspconfig",
    event = "VimEnter",
    
    config = function()

        require'lspconfig'.gopls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                gopls = {
			        hints = {
				        assignVariableTypes = true,
				        compositeLiteralFields = true,
				        compositeLiteralTypes = true,
				        constantValues = true,
				        functionTypeParameters = true,
				        parameterNames = true,
				        rangeVariableTypes = true,
			        },
                },
            }
        })
        require'lspconfig'.lua_ls.setup({
            
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },
                    completion = {
                        callSnippet = "Replace",
                    },
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            }
        })
        
    end
}
