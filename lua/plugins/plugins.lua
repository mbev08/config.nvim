return {

  -------------------------------------------------------------------------
  -- Core
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  { "nvim-tree/nvim-web-devicons", opts = {} },

  -------------------------------------------------------------------------
  -- File Navigation
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

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
}
