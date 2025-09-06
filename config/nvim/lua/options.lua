require "nvchad.options"

-- add yours here!

local o = vim.o

o.cursorlineopt = 'both' -- to enable cursorline!

-- use actual tabs
o.expandtab = false
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- shell
o.shell = "/usr/bin/fish"
