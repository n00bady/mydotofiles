local M = {}

M.options = {
  tabstop = 4,
  cursorline = true,
}

M.ui = {
   theme = "tokyodark",
   hl_override = {
     CursorLine = {
       bg = "black2",
     },
   },
}

M.mappings = require "custom.mappings"

return M
