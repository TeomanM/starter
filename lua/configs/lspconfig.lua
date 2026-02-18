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
	"teal_ls",
	"yamlls",
}

vim.lsp.config.qmlls = {
	cmd = { "qmlls", "-E" },
}

vim.lsp.config.teal_ls = {
	cmd = { "/home/teoman/.luarocks/bin/teal-language-server" },
}
vim.lsp.inlay_hint.enable(true)
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
