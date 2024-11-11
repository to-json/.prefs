local window_keymaps = { w = {
    name = "󰑃 window",

    h = { ":wincmd h<CR>", "move cursor one window left" },
    j = { ":wincmd j<CR>", "move cursor one window down" },
    k = { ":wincmd k<CR>", "move cursor one window up" },
    l = { ":wincmd l<CR>", "move cursor one window right" },

    w = { ":wincmd w<CR>", "move cursor one window clockwise" },
    W = { ":wincmd W<CR>", "move cursor one window counterclockwise" },

    m = { ":wincmd P<CR>", "move cursor to preview window" },
    p = { ":wincmd p<CR>", "move cursor to previous window" },

    H = { ":wincmd H<CR>", "move window to leftmost edge" },
    J = { ":wincmd J<CR>", "move window to bottommost edge" },
    K = { ":wincmd K<CR>", "move window to topmost edge" },
    L = { ":wincmd L<CR>", "move window to rightmost edge" },

    r = { ":wincmd r<CR>", "rotate windows clockwise" },
    R = { ":wincmd R<CR>", "rotate windows counterclockwise" },
    x = { ":wincmd x<CR>", "swap this window with the next" },

    ["="] = { ":wincmd =<CR>", "make all windows equal sized" },
    o = { ":wincmd o<CR>", "close other windows" },

    ["-"] = { ":split<CR>", "split current window horizontally" },
    ["|"] = { " :vsplit<CR>", "split current window vertically" },
    f = { ":wincmd f<CR>", "split to open the filename under cursor  " },
    F = { ":wincmd F<CR>", "split to open the filename under cursor at specified line" },

    c = { ":wincmd c<CR>", "close the current window" },
    z = { ":wincmd z<CR>", "close any 'preview' window" }}}

WK.register(window_keymaps, {prefix = "<leader>"})
