vim.g.maplocalleader = ','
require('lazy-bootstrap')
require('plugins')
require('treesitter-conf')
require('windline-conf')
require('cmp-conf')
require('lsp-conf')
require('nap-conf')
require('telescope-conf')
require('mini-conf')
-- require('org-conf')
require('option-conf')
require('ollama-conf')
require('neogen-conf')
require('iron-conf')
require('jupytext-conf')
-- require('minimap-conf')
require('zk-conf')
require('keymaps')

if vim.g.neovide then
  require('neovide-conf')
end

vim.cmd('let g:slime_target = "tmux"')
