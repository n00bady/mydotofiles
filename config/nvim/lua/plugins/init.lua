return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },

	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			-- vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_compiler_callback = 1
			vim.g.vimtex_compiler_latexmk = {
				out_dir = "build",
				continuous = 1,
				options = {
					"-file-line-error",
					"-synctex=1",
					"-interaction=nonstopmode",
					"-pvc",
				},
			}
		end,
	},

	{ "jannis-baum/vivify.vim", lazy = false },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",

				-- web dev
				"html",
				"css",
				"scss",
				"javascript",
				"typescript",
				"tsx",
				"json",

				-- Golang
				"go",
				"gomod",
				"gosum",

				-- Godot
				"gdscript",
				-- "gdresource",

				-- other
				"c",
				"cmake",
				"make",
				"cpp",
				"bash",
				"rust",
				"toml",
				"regex",
				"python",
				"markdown",
				"sql",
				"meson",
			},
		},
	}
}
