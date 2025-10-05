vim.filetype.add({ extension = { clar = "clarity" } })

-- NOTE: This fails if `nvim-treesitter` is not installed
require("nvim-treesitter.parsers").clarity = {
	install_info = {
		url = "https://github.com/xlittlerag/tree-sitter-clarity",
		revision = "ef0552d593a64d6d2936090a44f0ad9f5d54a37f",
		branch = "main",
	},
	maintainers = { "aldur" },
	tier = 2,
}

vim.treesitter.language.register("clarity", "clarity")
