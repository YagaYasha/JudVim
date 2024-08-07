-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
--Save/Save-Quit

--Line Navigation
map({ "n", "x" }, "<S-h>", "^")
map({ "n", "x" }, "L", "g_")

--Tubzik
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
map("n", "<leader>z", ":BufferLineCloseLeft<CR>")
map("n", "<leader>x", ":BufferLineCloseOthers<CR>")
map("n", "<leader>c", ":BufferLineCloseRight<CR>")
