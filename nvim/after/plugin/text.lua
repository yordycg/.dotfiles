local keymap = vim.keymap

keymap.set('n', '<leader>ty', '<cmd>ToggleAlternate<cr>')

-- ctrl-n => select word (how ctrl-d in VS Code)
-- <cr> => select object (cr + cr + cr ... + n)
