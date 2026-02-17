require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map(
	"n",
	"<leader>fs",
	"<cmd>Telescope find_files search_dirs={'/usr/share/doc/arch-wiki/html/en/'}<cr>",
	{ desc = "Telescope Search Arch Wiki" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--

-- Disable mappings
-- local nomap = vim.keymap.del
