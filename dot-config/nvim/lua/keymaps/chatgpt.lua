-- local ng = require('neogen')
local chatgpt_keymaps = { g = {
    name = "󰑃 chatgpt",

    c = { ":ChatGPT<CR>", "bring up chatgpt" },
    a = { ":ChatGPTActAs<CR>", "bring up chatgpt with a prompt from 'Awesome ChatGPT Promts'" },
    e = { ":ChatGPTEditWithInstructions<CR>", "edit (selection|buffer) with ChatGPT" },
    r = { ":ChatGPTRun<CR>", "run a defined ChatGPT command" },
}}
WK.register(chatgpt_keymaps, {prefix = "<leader>"})
