local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd", "rust_analyzer", "gopls", "gdscript", "pylsp", "templ", "taplo", "marksman" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["ts_ls"].setup {
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx", "javascript.jsx" },
	cmd = { "typescript-language-server", "--stdio" }
}

--
-- lspconfig.pyright.setup { blabla }
