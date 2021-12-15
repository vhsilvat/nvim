local packer = require 'plugins.packerInit'
local use = packer.use

return packer.startup(function()

	-- Packer
	use {'lewis6991/impatient.nvim'}
	use {'wbthomason/packer.nvim'}

	-- Colors
	use {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}
	use {'xiyaowong/nvim-transparent'}

	-- Statusline 
	use {
		'famiu/feline.nvim',
		config = function()
			require('plugins.statusline')
		end
	}

	-- Icones
	use {'kyazdani42/nvim-web-devicons'}

end)

