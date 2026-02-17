require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map(
	"n",
	"<leader>fs",
	"<cmd>Telescope find_files search_dirs={'/usr/share/doc'}<cr>",
	{ desc = "Telescope Search Docs" }
)
map("n", "<leader>mp", "<cmd>Telescope man_pages sections={'ALL'}<cr>", { desc = "Telescope Search Manpages" })

-- Disable mappings
-- local nomap = vim.keymap.del
