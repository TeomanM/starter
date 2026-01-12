require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  "ts_ls",
  "glsl_analyzer",
  "clangd",
  "ruff",
  "systemd_lsp",
  "hyprls",
  "lemminx",
  "bashls",
  "taplo",
  "oxlint",
}
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers
