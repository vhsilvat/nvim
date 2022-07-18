local present, configs = pcall(require, 'nvim-treesitter.configs')
if not present then
	return
end

configs.setup({
	ensure_installed = 'all', -- "all" ou uma lista de linguagens
	ignore_install = { '' }, -- lista de parsers para ignorar a instalacao
	highlight = {
		enable = true, -- false desabilita a extensao
		disable = { 'css' }, -- lista de linguagens desabilitadas
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { 'python', 'css' } },
})
