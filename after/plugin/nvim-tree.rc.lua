local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
    git = {
        enable = true
    }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
