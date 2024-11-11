local lisps = { "clojure", "janet", "fennel", "racket", "guile", }
local conjures = { "clojure", "janet", "fennel", "racket", "guile", "python", "ruby" }

local plugins = {
  'jpalardy/vim-slime',
  'folke/lazy.nvim',                                            -- package management
  'tpope/vim-sensible',                                         -- good defaults
  'tpope/vim-fugitive',                                         -- git control
  'tpope/vim-repeat',                                           -- more powerful . repeats
  { 'guns/vim-sexp',                              ft = lisps }, -- mappings for lispy sexp manipulation
  { 'tpope/vim-sexp-mappings-for-regular-people', ft = lisps }, -- make the above more usable
  --  'tpope/vim-unimpaired', -- neat pairs of mappings
  'neovim/nvim-lspconfig',
  'nvim-lua/plenary.nvim', -- nvim functions
  -- 'tpope/vim-surround',    -- delimiter control, usurped by mini.surround
  'j-hui/fidget.nvim',     -- lsp progress meter
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' }
  }, -- internal fuzzyfinder for telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }, -- dialogue based thing-finder
  {
    'nvim-telescope/telescope-symbols.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' }
  }, --  symbol picker for telescope
  {
    'ahmedkhalf/project.nvim',

    config = function()
      require("project_nvim").setup({ silent_chdir = false })
    end,
    dependencies = { 'nvim-telescope/telescope.nvim' }
  },                                                          --  project switcher
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, -- syntax parsing subsystem
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = { 'nvim-treesitter' }
  },                                                    -- textobj support for treesitter languages
  -- 'Olical/aniseed', -- return to this later, fennel for nvim config
  { 'Olical/conjure',                  ft = conjures }, -- interactive repl programming tool one
  'Vigemus/iron.nvim',                                  -- interactive repl programming tool two
  'folke/trouble.nvim',
  'folke/which-key.nvim',                               -- keymaps and labels
  -- 'ggandor/leap.nvim',                                       -- quick jump to point in buffer
  'folke/flash.nvim',                                        -- quick jump to point in buffer
  'windwp/windline.nvim',                               -- statusline
  'echasnovski/mini.nvim',                              -- assorted useful things
  'honza/vim-snippets',                                 -- collection of snippets
  'dcampos/nvim-snippy',                                -- snippet tool
  "liangxianzhe/nap.nvim",                              -- prefix-based movement
  'stevearc/dressing.nvim',                             -- pretty dialogues
  -- 'nvim-orgmode/orgmode',                                    -- organizer and notes , i never fucking used this
  'beauwilliams/focus.nvim',                            -- buffer/window focus tool; might remove
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true
  },
  -- completion
  'hrsh7th/nvim-cmp',
  {
    'hrsh7th/cmp-buffer',
    dependencies = { 'hrsh7th/nvim-cmp' }
  },
  {
    'hrsh7th/cmp-cmdline',
    dependencies = { 'hrsh7th/nvim-cmp' }
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    dependencies = { 'hrsh7th/nvim-cmp' }
  },
  {
    'hrsh7th/cmp-path',
    dependencies = { 'hrsh7th/nvim-cmp' }
  },
  {
    'dcampos/cmp-snippy',
    dependencies = { 'hrsh7th/nvim-cmp' }
  },
  -- language modes
  -- {'madskjeldgaard/faust-nvim',
  --   dependencies = {'vijaymarupudi/nvim-fzf'}},
  -- 'simrat39/rust-tools.nvim',
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  'rust-lang/rust.vim',
  'bakpakin/fennel.vim', -- lua based lisp mode
  'bakpakin/janet.vim',  -- lua based lisp mode
  'hashivim/vim-terraform',
  'hashivim/vim-vagrant',
  'luisjure/csound-vim',
  'ziglang/zig.vim',
  'fatih/vim-go',
  'vim-crystal/vim-crystal',
  'towolf/vim-helm',
  -- color schemes
  'srcery-colors/srcery-vim',
  'sainnhe/everforest',
  'sainnhe/sonokai',
  'sainnhe/edge',
  -- shit i literally only have because other shit needs it
  -- 'vijaymarupudi/nvim-fzf', --faust nvim

  -- provisional plugins i'm not sure if i like
  'nvimdev/lspsaga.nvim',
  'nvim-telescope/telescope-ui-select.nvim',
  'wfxr/minimap.vim',
  --   {"jackMort/ChatGPT.nvim",
  --     event = "VeryLazy",
  --     config = function()
  --       require("chatgpt").setup({
  --     -- api_key_cmd = "gpg -d ~/.config/secrets/play.gpg 2>/dev/null"
  -- })
  --     end,
  --     dependencies = {
  --       "MunifTanjim/nui.nvim",
  --       "nvim-lua/plenary.nvim",
  --       "nvim-telescope/telescope.nvim"}},
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
  { "David-Kunz/gen.nvim", dir = "/Users/jaesaxon/tools/gen.nvim", model = 'llama3' },
  {
    "nomnivore/ollama.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

    -- Sample keybind for prompting. Note that the <c-u> is important for selections to work properly.
    keys = {
      {
        "<leader>oo",
        ":<c-u>lua require('ollama').prompt()<cr>",
        desc = "ollama prompt",
        mode = { "n", "v" },
      },
    },

    ---@type Ollama.Config
    opts = {
      -- your configuration overrides
    }
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    -- event = {
    --   "BufReadPre ".. vim.fn.expand "~" .. "Documents/fuck/*.md",
    --   "BufNewFile ".. vim.fn.expand "~" .. "Documents/fuck/*.md",
    --   -- "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      'hrsh7th/nvim-cmp',
      'nvim-telescope/telescope.nvim',
      'nvim-treesitter/nvim-treesitter',

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "work",
          path = "~/obsidian/work",
        },
        -- {
        --   name = "work",
        --   path = "~/vaults/work",
        -- },
      },

    },
  },
  -- {'dense-analysis/neural',
  --   event = "VeryLazy",
  --   config = function()
  --     require("neural").setup({
  --     source = {
  --       openai = { api_key = vim.env.OPENAI_API_KEY }}})
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     'elpiloto/significant.nvim' }}
  { "zk-org/zk-nvim", },
}

require("lazy").setup(plugins)


-- Plug 'Shougo/neocomplete.vim'
-- Plug 'Shougo/neomru.vim'
-- Plug 'Shougo/unite.vim'
-- Plug 'Shougo/vimproc.vim'
-- Plug 'Shougo/vimshell.vim'
-- Plug 'honza/vim-snippets'
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
