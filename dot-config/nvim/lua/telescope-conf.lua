local builtin = require('telescope.builtin')
require('telescope').load_extension('projects')
local extensions = require('telescope').extensions
local WK = require('which-key')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "find buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "find help"})
vim.keymap.set('n', '<leader>fP', builtin.builtin, {desc = "find more finders"})
vim.keymap.set('n', '<leader>fs', builtin.symbols, {desc = "find unicode symbols"})
vim.keymap.set('n', '<leader>fr', builtin.resume, {desc = "resume previous search"})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {desc = "find quickfix items"})
vim.keymap.set('n', '<leader>fp', extensions.projects.projects, {desc = "find projects"})
local telescope_keymaps = { f = {
    name = "telescope",}}
WK.register(telescope_keymaps, {prefix = "<leader>"})
