-- Source https://github.com/alexkeating/vim-clarity/blob/main/syntax/clarity.vim
vim.opt_local.iskeyword = "38,42,43,45,47-58,60-63,64-90,97-122,_"

vim.opt_local.commentstring = ";; %s"

-- ts needs to be started:
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/bb83a676128d95c865e40ba71376d883bdadec14/README.md#highlighting
vim.treesitter.start()
