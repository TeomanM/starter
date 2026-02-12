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
    "nvim-tree/nvim-tree.lua",
    -- Opts extends default settings
    opts = {
      filters = { dotfiles = true },
    },
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
        "markdown_inline",
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
        "bash",
        "commonlisp",
        "nix",
        "qmljs",
      },
    },
  },
  -- Themes
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
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  {
    "NeogitOrg/neogit",
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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    ft = { "markdown", "quarto" },
    opts = {},
  },
  {
    "MagicDuck/grug-far.nvim",
    lazy = false,
    keys = {
      { "<leader>gf", "<cmd>GrugFar<cr>", desc = "Search & Replace" },
    },
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "grr",
        "<cmd>Trouble lsp_references toggle<cr>",
        desc = "LSP References (Trouble)",
      },
      {
        "gri",
        "<cmd>Trouble lsp_implementations toggle<cr>",
        desc = "LSP Implementations (Trouble)",
      },
      {
        "<leader>qx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>qX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>qs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>qL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>qQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "Kenzo-Wada/boundary.nvim",
    branch = "release",
    opts = {
      auto = true, -- automatic refresh enabled by default
      -- marker_text = "'use client'",
    },
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  {
    "brianhuster/live-preview.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>pr", "<cmd>LivePreview start<cr>", desc = "Start LivePreview server" },
    },
    ft = { "markdown", "html", "asciidoc", "svg" },
  },
  {
    "michaelb/sniprun",
    branch = "master",
    build = "sh install.sh",
    keys = {
      {
        "<leader>rs",
        "<cmd>SnipRun<cr>",
        desc = "Run selected snippet of code",
      },
    },
  },
  {
    "josephschmitt/pj.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    cmd = { "Pj", "PjCd" },
    keys = {
      { "<leader>fp", "<cmd>Pj<cr>", desc = "Telescope find projects (global)" },
    },
    opts = {
      picker = { type = "telescope" },
    },
  },
}
