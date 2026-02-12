require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"ts_ls",
	"glsl_analyzer",
	"clangd",
	"ruff",
	"systemd_lsp",
	"hyprls",
	"lemminx",
	"bashls",
	"oxlint",
	"oxfmt",
	"docker_language_server",
	"taplo",
	"qmlls",
	"beautysh",
	"jsonls",
}

vim.lsp.config.qmlls = {
	cmd = { "qmlls", "-E" },
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
