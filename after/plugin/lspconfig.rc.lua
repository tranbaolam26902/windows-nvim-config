local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end
local status1, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if (not status1) then return end
local status2, typescript = pcall(require, 'typescript')
if (not status2) then return end

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts) -- ok
    vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts) --ok
    vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts) --ok
    vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts) -- ok
    vim.keymap.set('n', 'gt', '<Cmd>Lspsaga goto_type_definition<CR>', opts) -- ok
    vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts) -- ok
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts) -- ok
    vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts) -- ok
    vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
    vim.keymap.set('n', 'gd', '<Cmd>Lspsaga finder<CR>', opts)

    if client.name == 'tsserver' then
        vim.keymap.set('n', '<leader>rf', ':TypescriptRenameFile<CR>')
    end
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig['html'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

typescript.setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach
    }
})

lspconfig['cssls'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig['tailwindcss'].setup({
    capabilities = capabilities,
    on_attach = on_attach
})
