return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
				"lua",
				"html",
				"css",
				"javascript",
				"typescript",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
