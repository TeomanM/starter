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
  "docker_language_server",
  "taplo",
  "qmlls",
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
