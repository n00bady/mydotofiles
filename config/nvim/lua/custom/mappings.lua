---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fm"] = {
        function()
            require("conform").format{{ async = true, lsp_fallback = true }}
        end,
        "Format everything"
    }
  },
}

M.telescope = {
    n = {
        ["<leader>fu"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find LSP symbols" },
    },
}

-- more keybinds!

return M
