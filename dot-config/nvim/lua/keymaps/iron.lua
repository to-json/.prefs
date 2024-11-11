
local fe = require('iron.core')
local fem = require('iron.marks')

WK.register({i = {name = "󰑃 iron"}}, {prefix = "<leader>"})
WK.register({c = {name = "󰑃 iron send"}}, {prefix = "<leader>"})

vim.keymap.set('n', "<leader>cc", fe.send_motion, {desc = "send next motion to repl"})
vim.keymap.set('v', "<leader>cc", fe.visual_send, {desc = "send selected text to repl"})
vim.keymap.set('n', "<leader>cf", fe.send_file, {desc = "send current file to repl"})
vim.keymap.set('n', "<leader>cl", fe.send_line, {desc = "send current line to repl"})
vim.keymap.set('n', "<leader>cu", fe.send_until_cursor, {desc = "send line until cursor to repl"})
vim.keymap.set('n', "<leader>cm", fe.send_mark, {desc = "send current marked selection to repl"})
vim.keymap.set('n', "<leader>ic", fe.mark_motion, {desc = "mark next motion for iron repl"})
vim.keymap.set('n', "<leader>ic", fe.mark_visual, {desc = "mark selected text for iron repl"})
vim.keymap.set('n', "<leader>id", fem.drop_last, {desc = "remove iron repl mark"})
vim.keymap.set('n', "<leader>c<cr>", function() fe.send(nil, string.char(13)) end, {desc = "send carriage return to repl"})
vim.keymap.set('n', "<leader>c<space>", function() fe.send(nil, string.char(03)) end, {desc = "send interrupt to repl"})
vim.keymap.set('n', "<leader>iq", fe.close_repl, {desc = "exit iron repl"})
vim.keymap.set('n', "<leader>il", function() fe.send(nil, string.char(12)) end, {desc = "clear iron repl"})
--
-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<leader>is', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<leader>ir', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<leader>if', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<leader>ih', '<cmd>IronHide<cr>')
