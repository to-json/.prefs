vim.api.nvim_command("imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'")
vim.api.nvim_command("imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'")
vim.api.nvim_command("smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'")
vim.api.nvim_command("smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'")
vim.api.nvim_command("xmap <Tab> <Plug>(snippy-cut-text)")

local snippy_keymaps = { a = {
    name = "󰑃 snippy",
}}
WK.register(snippy_keymaps, {prefix = "<leader>"})
