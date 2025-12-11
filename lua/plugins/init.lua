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
        "caddy",
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
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
  },
  {
    "emmanueltouzery/apidocs.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- or, 'folke/snacks.nvim'
    },
    cmd = { "ApidocsSearch", "ApidocsInstall", "ApidocsOpen", "ApidocsSelect", "ApidocsUninstall" },
    config = function()
      require("apidocs").setup()
      -- Picker will be auto-detected. To select a picker of your choice explicitly you can set picker by the configuration option 'picker':
      -- require('apidocs').setup({picker = "snacks"})
      -- Possible options are 'ui_select', 'telescope', and 'snacks'
    end,
    keys = {
      { "<leader>sad", "<cmd>ApidocsOpen<cr>", desc = "Search Api Doc" },
    },
  },
  -- {
  --   "brianhuster/live-preview.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   config = function()
  --     require("livepreview.config").setup()
  --   end,
  -- },
}
