require "nvchad.options"
vim.filetype.add {
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}

vim.filetype.add {
  pattern = { ["Caddyfile*"] = "caddy" },
}

-- No line wraps.
local o = vim.o
o.wrap = false

-- Relative line number
o.number = true
o.relativenumber = true

-- Tab
o.tabstop = 4
o.expandtab = true
o.softtabstop = 4
o.shiftwidth = 4
