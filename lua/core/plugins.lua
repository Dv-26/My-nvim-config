local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKRE_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

local status_ok, packer = pcall(require,"packer")
if not status_ok then
	return
end

packer.init({
    git = {
        default_url_format = 'git@github.com:%s'
    },
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded"})
		end,
	},
})

return require("packer").startup(function(use)

	use({ "wbthomason/packer.nvim" })
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use({"nvim-tree/nvim-web-devicons"})
	use({ "nvim-lua/popup.nvim" })
	use({ "nvim-lua/plenary.nvim" })
	use({ "akinsho/bufferline.nvim" })
    use({ 
        "kyazdani42/nvim-tree.lua",
        tag = "nightly",
    })
--主题
    use({
        "folke/tokyonight.nvim",
        "rebelot/kanagawa.nvim",
        "sainnhe/everforest",
        "shaunsingh/nord.nvim",
        "EdenEast/nightfox.nvim",
    })
    use({ "jiangmiao/auto-pairs"})
    use({ "numToStr/Comment.nvim" })
--启动界面
    use({ "nvimdev/dashboard-nvim" })
--语法高亮
    use({ "nvim-treesitter/nvim-treesitter" })
    use({ "p00f/nvim-ts-rainbow" })
--lsp
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    use({ "neovim/nvim-lspconfig" })
--自动补全
    use({ "hrsh7th/cmp-buffer" })
    use({ "uga-rosa/cmp-dictionary" })
    use({ "hrsh7th/nvim-cmp" })
    use({ "hrsh7th/cmp-nvim-lsp" })
    use({ "L3MON4D3/LuaSnip" })
    use({ "saadparwaiz1/cmp_luasnip" })
    use({ "rafamadriz/friendly-snippets" })
    use({ "hrsh7th/cmp-path" })
--文件检索
    use({ "nvim-telescope/telescope.nvim" })
--浮动窗口
    use({ "voldikss/vim-floaterm" })
    use({ "MunifTanjim/nui.nvim" })
--缩进线
    use({ "lukas-reineke/indent-blankline.nvim" })
    -- use({ "brglng/vim-im-select" })
--leetcode
    use({ "kawre/leetcode.nvim" })
--verilog
    -- use({ "vhda/verilog_systemverilog.vim" })
--markdown
-- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
