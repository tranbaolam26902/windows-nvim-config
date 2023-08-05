local status, packer = pcall(require, 'packer')
if (not status ) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'L3MON4D3/LuaSnip' -- Snippet
    use 'hoob3rt/lualine.nvim' -- Statusline
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'akinsho/nvim-bufferline.lua'
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-tree/nvim-tree.lua'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jose-elias-alvarez/typescript.nvim'
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
    }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'
end)
