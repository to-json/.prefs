require('lazy-bootstrap')
require('plugins')
require('treesitter-conf')
require('windline-conf')
require('cmp-conf')
require('lsp-conf')
require('nap-conf')
require('telescope-conf')
require('mini-conf')
require('leap-conf')
require('org-conf')
require('option-conf')
require('faust-conf')
require('keymaps')

if vim.g.neovide then
  require('neovide-conf')
end
