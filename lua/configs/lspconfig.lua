require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust_analyzer", "ts_ls", "glsl_analyzer", "clangd", "ruff", "docker_compose_language_service", "systemd-language-server", "systemdlint" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
