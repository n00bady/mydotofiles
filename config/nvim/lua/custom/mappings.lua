-- MAPPINGS
local M = {}

M.telescope = {
  n = {
    ["<leader>cc"] = { "<cmd> Telescope <CR>", "Toggle Telescope." },
  }
}

M.general = {
  n = {
    ["<leader>Q"] = { "<cmd> q <CR>", "Quit" },
  }
}

return M
