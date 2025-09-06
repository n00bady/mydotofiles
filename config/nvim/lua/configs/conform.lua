local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		go = { "gofumpt" },
		shell = { "shellharder" },
		toml = { "taplo" },

	},

	format_on_save = {
	  -- These options will be passed to conform.format()
	  timeout_ms = 500,
	  lsp_fallback = true,
	},
}

return options
