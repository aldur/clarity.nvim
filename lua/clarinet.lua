local lspconfig_configs = require 'lspconfig.configs'
local lspconfig_util = require 'lspconfig.util'

if not lspconfig_configs.clarinet then
    lspconfig_configs.clarinet = {
        default_config = {
            cmd = {'clarinet', 'lsp'},
            filetypes = {'clarity'},
            root_dir = lspconfig_util.find_git_ancestor,
            single_file_support = true,
            init_options = {}
        },
        docs = {
            description = [[https://github.com/hirosystems/clarinet]],
            default_config = {root_dir = [[root_pattern(".git")]]}
        }
    }
end
