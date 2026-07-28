vim.filetype.add({ extension = { clar = "clarity" } })

-- NOTE: This fails if `nvim-treesitter` is not installed
require("nvim-treesitter.parsers").clarity = {
	install_info = {
		url = "https://github.com/xlittlerag/tree-sitter-clarity",
		revision = "f3b7520fa336e877fc7bb180902e325d465da052",
		branch = "main",
	},
	maintainers = { "aldur" },
	tier = 2,
}

vim.treesitter.language.register("clarity", "clarity")
