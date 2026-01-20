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
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.nvim-lint"
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
        "kdl",
        "toml",
        "xml",
        "rust",
        "c",
        "cpp",
        "python",
        "dockerfile",
        "json",
        "markdown",
        "typescript",
        "javascript",
        "yaml",
        "latex",
        "go",
        "jinja",
        "kdl",
        "zsh",
        "ron",
        "zsh",
      },
    },
  },
  {
    "maxmx03/fluoromachine.nvim",
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
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^7", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
