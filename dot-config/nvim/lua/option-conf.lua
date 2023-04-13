local set = vim.opt
set.tabstop = 2             -- tab spacing
set.softtabstop = 2         -- unify
set.shiftwidth = 2          -- indent/outdent by 2 columns
set.shiftround = true       -- always indent/outdent to the nearest tabstop
set.expandtab = true        -- use spaces instead of tabs
set.incsearch = true        -- highlight as you type your search.
set.number = true           -- show line numbers
set.ruler = true            -- Always show info along bottom.
set.wrap = false            -- no word wrap
set.hidden = true           -- hide unsaved buffers
set.hlsearch = true         -- highlight search results
set.relativenumber = true   -- relative line numbers
set.termguicolors = true    -- good terminal colors
set.background = 'dark'     -- dark mode
vim.api.nvim_cmd({
  cmd = 'colorscheme',
  args = {'everforest'}
}, {})
