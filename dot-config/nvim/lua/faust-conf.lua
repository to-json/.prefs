require 'faust-nvim'
vim.g.faust_examples_dir = "/usr/local/share/faust/examples"
-- Location of faust binaries
vim.g.faust2appls_dir = "/usr/local/bin/"
-- Location of faust libraries
vim.g.faustlib_dir = "/usr/local/share/faust/"

local function faust_keys(args)
  local opts = { noremap = true, silent = true, buffer = args.buf }
  vim.keymap.set("n", "<Leader>df", "<cmd>Faust2<CR>", opts)
end

local function faust_setup(args)
  -- local u = require("faust-nvim.utils")
  -- local faust_snippet_path = u.faust_nvim_root_dir .. u.path_sep .. "lua" .. u.path_sep .. "faust-nvim" .. u.path_sep .. "snippets"
  -- local snippet_path = require('snippy.shared').config.snippet_dirs or vim.api.nvim_list_runtime_paths()
  -- table.insert(snippet_path, faust_snippet_path)
  -- require('snippy').setup_buffer(0, {snippet_dirs = snippet_path})
  faust_keys(args)
end

vim.api.nvim_create_autocmd('FileType', {
	desc = 'Set faust-specific keybinds',
	pattern = 'faust',
	callback = faust_setup
})
