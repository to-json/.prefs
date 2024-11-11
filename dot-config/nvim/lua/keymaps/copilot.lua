
local hax = require('copilot')
local neogen_keymaps = { h = {
    name = "󰑃 copilot",

    a = {(function() hax.panel.accept() end), "accept panel suggestion"},
    j = {(function() hax.panel.jump_next() end), "jump to next suggestion"},
    k = {(function() hax.panel.jump_prev() end), "jump to previous suggestion"},
    o = {(function() hax.panel.open() end), "open copilot panel"},
    r = {(function() hax.panel.refresh() end), "refresh the panel"},
}}
WK.register(neogen_keymaps, {prefix = "<leader>"})
