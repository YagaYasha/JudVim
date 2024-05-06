local map = vim.keymap.set

vim.g.mapleader = ' '

--Close Window
map('n','q',':close<CR>')

--NvimTreeToggle
map('n','<S-t>',':NvimTreeToggle<CR>')

--Save/Save-Quit
map('n','<C-s>',':w!<cr>')
map('n','<C-q>',':wq!<cr>')

--Line Navigation
map({ 'n', 'x' }, '<S-h>', '^')
map({ 'n', 'x' }, 'L', 'g_')

--Tubzik
map("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })
map("n", "<leader>z", ":BufferLineCloseLeft<CR>")
map("n", "<leader>x", ":BufferLineCloseOthers<CR>")
map("n", "<leader>c", ":BufferLineCloseRight<CR>")
