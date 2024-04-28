local map = vim.keymap.set

vim.g.mapleader = ' '

map('n','q',':close<cr>')
map('n','<S-t>',':NvimTreeToggle<cr>')
map('n','<C-s>',':w!<cr>')
map('n','<C-q>',':wq!<cr>')
map({ 'n', 'x' }, '<S-h>', '^')
map({ 'n', 'x' }, 'L', 'g_')

