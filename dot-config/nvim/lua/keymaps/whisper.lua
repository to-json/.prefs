
-- ng.generate({ type = "func"})
local whisper_keymaps = { t = {
    name = "󰑃 whisper",

    -- j = {":!~/.config/nvim/scripts/whisper.nvim<CR>:let @a = system(\"cat /tmp/whisper.nvim | tail | xargs -0 | tr -d '\\n' | sed -e 's/^[[:space:]]*//'\")<CR>\"ap", "take dictation"},
    l = {":!~/.config/nvim/scripts/whisper.nvim<CR>", "take dictation"},
    p = {":let @a = join(readfile('/tmp/whisper.nvim'), \"\\n\")<CR>\"ap", "paste dictation"},
}}
WK.register(whisper_keymaps, {prefix = "<leader>"})
