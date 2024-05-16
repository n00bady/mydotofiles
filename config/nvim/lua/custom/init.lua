-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- vim.opt.spelllang = 'en_us'
-- vim.opt.spell = true
-- vim.opt.spelloptions = 'camel,noplainbuffer'

vim.o.shell = "/usr/bin/fish"

vim.filetype.add({ extension = { templ = "templ" } })
