require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "clangd",
  "rust_analyzer",
  "gopls",
  "gdscript",
  "templ",
  "taplo",
  "marksman",
  "pyright",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
