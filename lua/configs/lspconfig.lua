require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  "ts_ls",
  "glsl_analyzer",
  "clangd",
  "ruff",
  "docker_compose_language_service",
  "systemd_lsp",
  "kdlfmt",
  "hyprls",
  "lemminx",
  "bashls",
}
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers
