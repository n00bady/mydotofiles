local colors = require("colors").get()
local ui = require("core.utils").load_config().ui

local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

-- enable highlighting for cursorline
vim.cmd("hi cursorline ctermbg=242 guibg=#3b4261")

-- change comments colors
if ui.italic_comments then
  fg("Comment", colors.grey .. " gui=italic")
else 
  fg("Comment", "#737373")
end

