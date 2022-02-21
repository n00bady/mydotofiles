-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  tabstop = 4,
  cursorline = true
}

M.ui = {
   theme = "tokyonight",
   hl_override = "custom.highlights",
}

return M
