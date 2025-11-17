vim.filetype.add({ extension = { clar = "clarity" } })

-- NOTE: This fails if `nvim-treesitter` is not installed
require("nvim-treesitter.parsers").clarity = {
	install_info = {
		url = "https://github.com/xlittlerag/tree-sitter-clarity",
		revision = "cbb3ffe8688aca558286fd45ed46857a1f3207bb",
		branch = "main",
	},
	maintainers = { "aldur" },
	tier = 2,
}

vim.treesitter.language.register("clarity", "clarity")
