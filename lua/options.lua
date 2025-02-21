require "nvchad.options"
vim.filetype.add {
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}

-- No line wraps.
local o = vim.o
o.wrap = false

-- Relative line number 
o.number = true
o.relativenumber = true

