return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "hyprlang",
        "glsl",
      },
    },
  },

  -- {
  --   "mrjones2014/smart-splits.nvim",
  -- },
  {
    "maxmx03/fluoromachine.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   local fm = require "fluoromachine"
    --
    --   fm.setup {
    --     glow = true,
    --     theme = "fluoromachine",
    --     transparent = true,
    --   }
    --
    --   vim.cmd.colorscheme "fluoromachine"
    -- end,
  },
  {
    "vuki656/package-info.nvim",
  },
}
