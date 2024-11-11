local ol = require('ollama').setup()
local wk = require('which-key')




local ollama_keymaps = { g = {
    name = "󰑃 ollama",
}}
wk.register(ollama_keymaps, {prefix = "<leader>"})

