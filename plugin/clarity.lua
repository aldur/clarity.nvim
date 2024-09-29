vim.filetype.add({extension = {clar = 'clarity'}})

-- NOTE: This fails if `nvim-treesitter` is not installed
local parser_config = require"nvim-treesitter.parsers".get_parser_configs()
parser_config.clarity = {
    install_info = {
        url = "https://github.com/xlittlerag/tree-sitter-clarity",
        files = {"src/parser.c"},
        branch = "main",
        generate_requires_npm = false,
        requires_generate_from_grammar = false
    },
    filetype = "clarity"
}

vim.treesitter.language.register('clarity', 'clarity')
