local M = {}

M.general {

  n = {
    ["<leader>cc"] = { "<cmd> Telescope <CR>", " Open Telescope" },
    ["<leader>q"] = { "<cmd> q <CR>", "Quick Quit"},
    ["C-a"] = { "<ESC>^", "Go to the first character in the line" },
  },

}

return M
