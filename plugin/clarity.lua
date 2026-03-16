vim.filetype.add({ extension = { clar = "clarity" } })

-- NOTE: This fails if `nvim-treesitter` is not installed
require("nvim-treesitter.parsers").clarity = {
	install_info = {
		url = "https://github.com/xlittlerag/tree-sitter-clarity",
		revision = "1436da3946359fcd7ac2d81917aaa78ef1e01755",
		branch = "main",
	},
	maintainers = { "aldur" },
	tier = 2,
}

vim.treesitter.language.register("clarity", "clarity")
