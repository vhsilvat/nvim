vim.api.nvim_command('packadd packer.nvim')
local present, packer = pcall(require, 'packer')

if not present then
	local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

	print "Cloning packer.."
	-- caso exista, remova a pasta antes de clonar
	vim.fn.delete(packer_path, "rf")
	vim.fn.system {
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		"--depth",
		"20",
		packer_path,
	}

	present, packer = pcall(require, "packer")
	if present then
		print "Packer clonado com sucesso."
	else
		error("Erro ao clonar\nPacker path: " .. packer_path .. "\n" .. packer)
	end
end

packer.init {
	display = {
		open_fn = function()
			return require('packer.util').float { border = 'shadow' }
		end,
		prompt_border = 'single',
	},
	git = {
		clone_timeout = 6000,
	},
	auto_clean = true,
	compile_on_sync = true,
compile_path = vim.fn.stdpath('config') .. "/lua/plugins/packer_compiled.lua"
}

return packer
