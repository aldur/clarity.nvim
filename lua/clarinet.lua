local lspconfig_configs = require 'lspconfig.configs'

local function find_git_ancestor(startpath)
  return vim.fs.dirname(vim.fs.find('.git', { path = startpath, upward = true })[1])
end


if not lspconfig_configs.clarinet then
    lspconfig_configs.clarinet = {
        default_config = {
            cmd = {'clarinet', 'lsp'},
            filetypes = {'clarity'},
            root_dir = find_git_ancestor,
            single_file_support = true,
            init_options = {}
        },
        docs = {
            description = [[https://github.com/hirosystems/clarinet]],
            default_config = {root_dir = [[root_pattern(".git")]]}
        }
    }
end
