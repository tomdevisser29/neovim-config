local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Key mappings for LSP actions
local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, silent = true, noremap = true }

    -- Show the hover information.
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Go to the definition.
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- Go to the implementation.
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

    -- Show signature help (parameters).
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

    -- Rename the symbol.
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

    -- Format the file.
    vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format { async = true }
    end, opts)
end

-- Set up the Language Server Protocols.
lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
lspconfig.ts_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
lspconfig.intelephense.setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

