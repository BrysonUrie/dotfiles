return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters = {
			["templ"] = {
				command = "templ",
				args = { "fmt" },
				stdin = true,
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			nix = { "nixpkgs-fmt" },
			python = { "black" },
			templ = { "templ" },
			go = { "gofmt", "goimports" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			primsa = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			cpp = { "clang-format", stop_after_first = true },
			json = { "prettier" },
		},
	},
}
