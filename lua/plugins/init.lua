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
	{
		"nemanjamalesija/smart-paste.nvim",
		event = "VeryLazy",
		config = true,
	},
	{
		"gbprod/yanky.nvim",
		dependencies = {
			{ "kkharji/sqlite.lua" },
		},
		opts = {
			ring = { storage = "sqlite" },
		},
		-- init is called during startup. Configuration for vim plugins typically should be set in an init function
		init = function()
			require("telescope").load_extension "yank_history"
		end,
		keys = {
			{ "<leader>p", "<cmd>Telescope yank_history<cr>", mode = { "n", "x" }, desc = "Smart Yank History" },
			{ "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Smart Yank text" },
			{ "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Smart Put yanked text after cursor" },
			{ "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Smart Put yanked text before cursor" },
			{
				"gp",
				"<Plug>(YankyGPutAfter)",
				mode = { "n", "x" },
				desc = "Smart Put yanked text after cursor and leave cursor after",
			},
			{
				"gP",
				"<Plug>(YankyGPutBefore)",
				mode = { "n", "x" },
				desc = "Smart Put yanked text before cursor and leave cursor after",
			},
			{ "<c-p>", "<Plug>(YankyPreviousEntry)", desc = "Smart Select previous entry through yank history" },
			{ "<c-n>", "<Plug>(YankyNextEntry)", desc = "Smart Select next entry through yank history" },
			{ "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Smart Put indented after cursor (linewise)" },
			{ "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Smart Put indented before cursor (linewise)" },
			{ "]P", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Smart Put indented after cursor (linewise)" },
			{ "[P", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Smart Put indented before cursor (linewise)" },
			{ ">p", "<Plug>(YankyPutIndentAfterShiftRight)", desc = "Smart Put and indent right" },
			{ "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", desc = "Smart Put and indent left" },
			{ ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "Smart Put before and indent right" },
			{ "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", desc = "Smart Put before and indent left" },
			{ "=p", "<Plug>(YankyPutAfterFilter)", desc = "Smart Put after applying a filter" },
			{ "=P", "<Plug>(YankyPutBeforeFilter)", desc = "Smart Put before applying a filter" },
		},
	},
	{
		"debugloop/telescope-undo.nvim",
		dependencies = { -- note how they're inverted to above example
			{
				"nvim-telescope/telescope.nvim",
				dependencies = { "nvim-lua/plenary.nvim" },
			},
		},
		keys = {
			{ -- lazy style key map
				"<leader>u",
				"<cmd>Telescope undo<cr>",
				desc = "undo history",
			},
		},
		opts = {
			-- don't use `defaults = { }` here, do this in the main telescope spec
			extensions = {
				undo = {
					-- telescope-undo.nvim config, see below
				},
				-- no other extensions here, they can have their own spec too
			},
		},
		config = function(_, opts)
			-- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
			-- configs for us. We won't use data, as everything is in it's own namespace (telescope
			-- defaults, as well as each extension).
			require("telescope").setup(opts)
			require("telescope").load_extension "undo"
		end,
	},
}
