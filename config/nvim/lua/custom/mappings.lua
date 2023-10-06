---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.telescope = {
    n = {
        ["<leader>fu"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find LSP symbols" },
    },
}

-- more keybinds!

return M
