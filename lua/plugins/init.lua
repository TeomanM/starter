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
		opts = function()
			require "configs.treesitter"
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
			{ "<leader>gg", "<cmd>Neogit<cr>", desc = "󰊢 Show Neogit UI " },
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
		keys = {
			{ "<leader>gf", "<cmd>GrugFar<cr>", desc = "Search & Replace" },
		},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = function()
			return require "configs.trouble"
		end,
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
		config = {
			dynamic_root = true,
		},
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
		keys = function()
			return require "configs.yanky"
		end,
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
	{
		"saxon1964/neovim-tips",
		version = "*", -- Only update on tagged releases
		dependencies = {
			"MunifTanjim/nui.nvim",
			"MeanderingProgrammer/render-markdown.nvim", -- Clean rendering
		},
		opts = {
			daily_tip = 0,
			bookmark_symbol = "🌟 ",
		},
		keys = {
			{ "<leader>to", ":NeovimTips<CR>", desc = "Tips Open Tips" },
			{ "<leader>tb", ":NeovimTipsBookmarks<CR>", desc = "Tips Show Bookmarked Tips" },
		},
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		lazy = false,
		opts = {
			enabled = false,
		},
	},
	{
		"stephansama/fzf-nerdfont.nvim",
		lazy = true,
		build = ":FzfNerdfont generate",
		dependencies = { "ibhagwan/fzf-lua" },
		cmd = "FzfNerdfont",
		keys = {
			{ "<leader>fi", "<CMD>FzfNerdfont<CR>", desc = "Telescope fzf nerd font picker" },
		},
		opts = {},
	},
}
