require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>fu", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Find LSP symbols" })
map("n", "<leader>fU", "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", {desc = "Find dynamic workspace LSP symbols"})
