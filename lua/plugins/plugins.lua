return {

  -------------------------------------------------------------------------
  -- Core
  --{
  --  "j-hui/fidget.nvim",
  --  opts = {
  --    -- options
  --  },
  --},
  { "nvim-tree/nvim-web-devicons", opts = {} },

  -------------------------------------------------------------------------
  -- File Navigation
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
  },

  --{
  --  "ThePrimeagen/harpoon",
  --  branch = "harpoon2",
  --  dependencies = { "nvim-lua/plenary.nvim" },
  --},

  -------------------------------------------------------------------------
  -- File Management
  {
    "mbbill/undotree",
  },
  {
    "tpope/vim-fugitive",
  },

  -------------------------------------------------------------------------
  -- Color Schemes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },

  -------------------------------------------------------------------------
  -- Syntax
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
  },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            jdtls = {
              -- Your custom jdtls settings goes here
            },
          },
          setup = {
            jdtls = function()
              --require("java").setup({
              --  -- Your custom nvim-java configuration goes here
              --})
            end,
          },
        },
      },
    },
  },

  --use {
  --    "VonHeikemen/lsp-zero.nvim",
  --    branch = "v1.x",
  --    requires = {
  --        -- LSP Support
  --        {"neovim/nvim-lspconfig"},
  --        {"williamboman/mason.nvim"},
  --        {"williamboman/mason-lspconfig.nvim"},

  --        -- Autocompletion
  --        {"hrsh7th/nvim-cmp"},
  --        {"hrsh7th/cmp-buffer"},
  --        {"hrsh7th/cmp-path"},
  --        {"saadparwaiz1/cmp_luasnip"},
  --        {"hrsh7th/cmp-nvim-lsp"},
  --        {"hrsh7th/cmp-nvim-lua"},

  --        -- Snippets
  --        {"L3MON4D3/LuaSnip"},
  --        {"rafamadriz/friendly-snippets"},
  --    }
  --}

  --{
  --dir = "~/.local/share/nvim/site/pack/plugins/start/snacks.nvim",
  --name = "snacks.nvim",
  --lazy = false,
  --priority = 1000,
  --opts = {
  -- bigfile = { enabled = true },
  -- dashboard = { enabled = true },
  -- explorer = { enabled = true, replace_netrw = true },
  -- indent = { enabled = true },
  -- input = { enabled = true },
  -- notifier = { enabled = true, timeout = 3000 },
  -- picker = { enabled = true },
  -- quickfile = { enabled = true },
  -- rename = { enabled = true },
  -- scope = { enabled = true },
  --scroll = { enabled = true },
  --  statuscolumn = { enabled = true },
  --    words = { enabled = true },
  --  },
}
--},
