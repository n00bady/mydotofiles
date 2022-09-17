-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "tokyonight",
  hl_override = {
    CursorLine = {
      bg = "#23273a",
    },
  },
}

M.options = {
  cursorline = true,
}

M.plugins = {
  user = require "custom.plugins",
}

return M
