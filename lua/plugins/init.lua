local packer = require 'plugins.packerInit'
local use = packer.use

return packer.startup(function()

	-- Packer
	use {'lewis6991/impatient.nvim'}
	use {'wbthomason/packer.nvim'}
	use {'nvim-lua/plenary.nvim'}

	-- Colors
	use {
			'ellisonleao/gruvbox.nvim',
			requires = {'rktjmp/lush.nvim'}
	}
	use {'xiyaowong/nvim-transparent'}

	-- Statusline 
	--use {
	--		'famiu/feline.nvim',
	--		config = function()
	--			require('plugins.statusline')
	--		end
	--}
	use {
			'SmiteshP/nvim-gps',
			requires = "nvim-treesitter/nvim-treesitter"
	}

	-- Icones
	use {'kyazdani42/nvim-web-devicons'}

	-- Misc
	use {'goolord/alpha-nvim',
			config = function()
				require('plugins.alpha')
			end

	}

	-- Core
	use {'nvim-telescope/telescope.nvim',
			config = function()
				require('plugins.telescope')
			end
	}
	use {'ahmedkhalf/project.nvim',
			config = function()
				require('plugins.project')
			end
	}
	use {'nvim-treesitter/nvim-treesitter',
			config = function()
				require('plugins.treesitter')
			end
	}

	-- LSP
	use {'neovim/nvim-lspconfig'}
	use {'williamboman/nvim-lsp-installer'}
	use {'jose-elias-alvarez/null-ls.nvim'}
	use {'RRethy/vim-illuminate'}

	-- cmp
	use {'hrsh7th/nvim-cmp'} -- completion plugin
  use {'hrsh7th/cmp-buffer'} -- buffer completions
  use {'hrsh7th/cmp-path'} -- path completions
  use {'saadparwaiz1/cmp_luasnip'} -- snippet completions
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh8th/cmp-nvim-lua'}

end)

