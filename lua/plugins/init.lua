return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
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
  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local fm = require "fluoromachine"

      fm.setup {
        glow = true,
        theme = "fluoromachine",
        transparent = true,
      }

      vim.cmd.colorscheme "fluoromachine"
    end,
  },
  {
    "vuki656/package-info.nvim",
  },
}
