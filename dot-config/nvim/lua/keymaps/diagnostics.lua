local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<Leader>sd', vim.diagnostic.show_line_diagnostics, opts)
vim.keymap.set('n', '<Leader>s[', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<Leader>s]', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<Leader>sl', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '<Leader>sq', vim.diagnostic.setqflist, opts)

local lsp_keymaps = { l = {
    name = "󰑃 lsp/diagnostics",
  }
}

WK.register(lsp_keymaps, {prefix = "<leader>"})
