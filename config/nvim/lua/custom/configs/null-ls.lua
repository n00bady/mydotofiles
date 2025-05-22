local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "json", "scss", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- go
  b.formatting.gofumpt,
  b.diagnostics.staticcheck,

  -- python
  b.formatting.black,

  -- shell
  b.formatting.shellharden,
  b.diagnostics.selene,

  -- other
  b.diagnostics.semgrep.with {
	filetypes = { "javascriptreact", "javascript", "typescript", "typescriptreact" },
    disabled_filetypes = { "go" },
    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
