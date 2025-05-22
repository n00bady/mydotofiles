local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",

    -- golang
    "gopls",
    "gofumpt",
    "staticcheck",

    -- shell
    "shellharden",

    -- python
    "black",
    "python-lsp-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },

      glyphs = {
        folder = {
          default = "",
          empty_open = "",
          open = "",
        },
      },
    },
  },
}

M.trouble = {
	modes = {
		diagnostics = {
			win = { size = 20 },
		},
		lsp = {
			win = { size = 80 },
		},
	},
}

return M
