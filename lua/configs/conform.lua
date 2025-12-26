local options = {
  formatters = {
    caddy = {
      command = "caddy",
      args = { "fmt", "-" },
      stdin = true,
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    caddy = { "caddy" },
    kdl = { "kdlfmt" },
    toml = { "taplo" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 0,
    lsp_fallback = true,
  },
}

return options
