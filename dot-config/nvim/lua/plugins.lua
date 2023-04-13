local lisps = {"clojure", "janet", "fennel", "racket", "guile", }

local plugins = {
  'folke/lazy.nvim', -- package management   
  'tpope/vim-sensible', -- good defaults
  'tpope/vim-fugitive', -- git control
  'tpope/vim-repeat', -- more powerful . repeats
  { 'guns/vim-sexp', ft = lisps }, -- mappings for lispy sexp manipulation
  { 'tpope/vim-sexp-mappings-for-regular-people', ft = lisps }, -- make the above more usable
--  'tpope/vim-unimpaired', -- neat pairs of mappings
  'neovim/nvim-lspconfig',
  'nvim-lua/plenary.nvim', -- nvim functions
  'tpope/vim-surround', -- delimiter control
  'j-hui/fidget.nvim', -- lsp progress meter
  'nvim-tree/nvim-web-devicons',
  { 'nvim-telescope/telescope-fzf-native.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'}}, -- internal fuzzyfinder for telescope
  {'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'}}, -- dialogue based thing-finder
  { 'nvim-telescope/telescope-symbols.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'}}, --  symbol picker for telescope
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, -- syntax parsing subsystem
  -- 'Olical/aniseed', -- return to this later, fennel for nvim config
  {'Olical/conjure', ft = lisps},
  'folke/trouble.nvim',
  'folke/which-key.nvim', -- keymaps and labels
  'ggandor/leap.nvim', -- quick jump to point in buffer
  'windwp/windline.nvim', -- statusline
  'echasnovski/mini.nvim', -- assorted useful things
  'honza/vim-snippets', -- collection of snippets
  'dcampos/nvim-snippy', -- snippet tool
  "liangxianzhe/nap.nvim", -- prefix-based movement
  'stevearc/dressing.nvim', -- pretty dialogues
  'nvim-orgmode/orgmode', -- organizer and notes
  -- completion
  'hrsh7th/nvim-cmp',
  { 'hrsh7th/cmp-buffer',
    dependencies = {'hrsh7th/nvim-cmp'}},
  { 'hrsh7th/cmp-cmdline',
    dependencies = {'hrsh7th/nvim-cmp'}},
  { 'hrsh7th/cmp-nvim-lsp',
    dependencies = {'hrsh7th/nvim-cmp'}},
  { 'hrsh7th/cmp-path',
    dependencies = {'hrsh7th/nvim-cmp'}},
  { 'dcampos/cmp-snippy',
    dependencies = {'hrsh7th/nvim-cmp'}},
  -- language modes
  {'madskjeldgaard/faust-nvim',
    dependencies = {'vijaymarupudi/nvim-fzf'}},
  'simrat39/rust-tools.nvim',
  'rust-lang/rust.vim',
  'bakpakin/fennel.vim', -- lua based lisp mode
  'bakpakin/janet.vim', -- lua based lisp mode
  'hashivim/vim-terraform',
  'hashivim/vim-vagrant',
  -- color schemes
  'srcery-colors/srcery-vim',
  'sainnhe/everforest',
  'sainnhe/sonokai',
  'sainnhe/edge',
  -- shit i literally only have because other shit needs it
  'vijaymarupudi/nvim-fzf', --faust nvim
}

require("lazy").setup(plugins)

-- Plug 'Shougo/neocomplete.vim'
-- Plug 'Shougo/neomru.vim'
-- Plug 'Shougo/unite.vim'
-- Plug 'Shougo/vimproc.vim'
-- Plug 'Shougo/vimshell.vim'
-- Plug 'honza/vim-snippets'
-- Plug 'jpalardy/vim-slime'
-- Plug 'kana/vim-textobj-user'
-- Plug 'kien/rainbow_parentheses.vim'
-- Plug 'kovisoft/slimv'
-- Plug 'luochen1990/rainbow'
-- Plug 'mfussenegger/nvim-dap'
-- Plug 'rking/ag.vim'
-- Plug 'scrooloose/nerdtree'
-- Plug 'scrooloose/syntastic'
-- Plug 'terryma/vim-expand-region'
-- Plug 'terryma/vim-multiple-cursors'
-- Plug 'tpope/vim-abolish'
-- Plug 'tpope/vim-endwise'
-- Plug 'tpope/vim-fireplace'
