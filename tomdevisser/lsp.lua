local lspconfig = require('lspconfig')

-- Set up the Language Server Protocols.
lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.ts_ls.setup({})
lspconfig.intelephense.setup({})

