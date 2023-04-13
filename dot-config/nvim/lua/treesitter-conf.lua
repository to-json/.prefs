require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "help",
    "query",
    "vim",
    "lua",
    "python",
    "ruby",
    "clojure",
    "rust",
    "javascript",
    "typescript",
    "yaml",
    "fennel",
    "scheme"},
  highlight = { enable = true }}
