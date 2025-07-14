local lspconfig_configs = require 'lspconfig.configs'

if not lspconfig_configs.clarinet then
    lspconfig_configs.clarinet = {
        default_config = {
            cmd = { 'clarinet', 'lsp' },
            filetypes = { 'clar', 'clarity' },
            root_markers = { '.git' },
        },
    }
end
