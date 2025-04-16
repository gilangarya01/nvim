return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"folke/neodev.nvim",
		},
		config = function()
			require("mason").setup()

			local lsp = {
				"lua_ls",
				"emmet_ls",
				"cssls",
				"ts_ls",
			}

			local tools = {
				"stylua",
				"prettier",
			}

			require("mason-lspconfig").setup({
				ensure_installed = lsp,
				automatic_installation = true,
			})

			require("mason-tool-installer").setup({
				ensure_installed = tools,
				auto_update = true,
				run_on_start = true,
			})

			local lspconfig = require("lspconfig")
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
					})
				end,
			})
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					html = { "prettier" },
					css = { "prettier" },
					json = { "prettier" },
					yaml = { "prettier" },
					markdown = { "prettier" },
				},
				format_on_save = {
					lsp_fallback = true,
					timeout_ms = 1000,
				},
			})
		end,
	},
}
