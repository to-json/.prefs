local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<Leader>sd', '<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>', opts)
vim.keymap.set('n', '<Leader>s[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '<Leader>s]', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.keymap.set('n', '<Leader>sq', '<cmd>lua vim.diagnostic.set_loclist()<CR>', opts)

local lsp_keymaps = { s = {
    name = "lsp/diagnostics",
  }
}

WK.register(lsp_keymaps, {prefix = "<leader>"})
