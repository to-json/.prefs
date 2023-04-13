local builtin = require('telescope.builtin')
local WK = require('which-key')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "find help"})
vim.keymap.set('n', '<leader>fp', builtin.builtin, {desc = "find more finders"})
vim.keymap.set('n', '<leader>f)', builtin.symbols, {desc = "find unicode symbols"})
local telescope_keymaps = { f = {
    name = "telescope",}}
WK.register(telescope_keymaps, {prefix = "<leader>"})
