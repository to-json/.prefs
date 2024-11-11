local ng = require('neogen')
-- ng.generate({ type = "func"})
local neogen_keymaps = { a = {
    name = "󰑃 neogen",

    a = {(function() ng.generate({ type = "func"}) end), "generate an annotation"},
    f = {(function() ng.generate({ type = "func"}) end), "generate a function annotation"},
    c = {(function() ng.generate({ type = "func"}) end), "generate a class annotation"},
    t = {(function() ng.generate({ type = "func"}) end), "generate a type annotation"},
    F = {(function() ng.generate({ type = "func"}) end), "generate a file annotation"},
}}
WK.register(neogen_keymaps, {prefix = "<leader>"})
