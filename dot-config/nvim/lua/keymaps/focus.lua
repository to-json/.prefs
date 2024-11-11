require('focus').setup()
local window_keymaps = { W = {
    name = "󰑃 window_focus",

    h = { ":FocusSplitLeft<CR>", "Focus Split Left" },
    j = { ":FocusSplitDown<CR>", "Focus Split Down" },
    k = { ":FocusSplitUp<CR>", "Focus Split Up" },
    l = { ":FocusSplitRight<CR>", "Focus Split Right" },
    ["+"] = { ":FocusEnable<CR>", "enable Focus"},
    T = { ":FocusToggle<CR>", "Toggle Focus globally"},
    ["-"] = { ":FocusDisable<CR>", "disable Focus"},
    ["="] = { ":FocusEqualise<CR>", "Focus Equalise"},
    ["*"] = { ":FocusMaximise<CR>", "Focus Maximise"},
    n = { ":FocusSplitCycle<CR>", "Cycle Focus Splits"},
    N = { ":FocusSplitNicely<CR>", "Focus Nice Split"},
    -- n = { ":FocusEnableWindow", "desc"},
    t = { ":FocusToggleWindow<CR>", "Toggle Focus for this window"},
    -- n = { ":FocusDisableWindow", "desc"},
    -- n = { ":FocusGetDisabledWindows", "desc"},
  }}
WK.register(window_keymaps, {prefix = "<leader>"})
