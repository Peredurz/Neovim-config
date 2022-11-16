-- This file can be loaded by calling `lua require('plugins')` from your init.vim  
-- Only required if you have packer configured as `opt` 
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)   
    -- Packer can manage itself   
    use 'wbthomason/packer.nvim'--Packer manages itself

	--colorschemes
    use 'folke/tokyonight.nvim' 

	--autocomplete 
    use  'jose-elias-alvarez/null-ls.nvim'
    use  'hrsh7th/nvim-cmp'
    use  'hrsh7th/cmp-buffer'
    use  'hrsh7th/cmp-path'
    use  'hrsh7th/cmp-cmdline'
    use  'saadparwaiz1/cmp_luasnip'
    use  'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'williamboman/nvim-lsp-installer'
    use  'neovim/nvim-lspconfig'

	--search nvim-tree
    use  'nvim-tree/nvim-tree.lua'
    use  'nvim-treesitter/nvim-treesitter'

	--autocomplete function
    use  'nvim-lua/plenary.nvim'

	--nice icons for nvim-tree
    use  'nvim-tree/nvim-web-devicons'
    
	--practice neovim
	use  'ThePrimeagen/vim-be-good'

	--autopairs of brackets etc.
	use 'windwp/nvim-autopairs'

	--LSP
	use "williamboman/mason.nvim" -- simple to use language server installer
  	use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
end)



