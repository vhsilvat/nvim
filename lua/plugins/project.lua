local present, project = pcall(require, 'project_nvim')
if not present then
	return
end
project.setup({

	-- detection_methods = { "lsp", "pattern" }, -- lsp detection vai bugar se houver multiplas linguagens no projeto
	detection_methods = { 'pattern' },

	-- padroes usados pra detectar a pasta raiz, quando **"pattern"** estiver em detection_methods
	patterns = { '.git', '.gitignore', 'Makefile', 'package.json', 'pom.xml', 'mvnw', '.mvn', 'src', 'target' },
})

local tele_status_ok, telescope = pcall(require, 'telescope')
if not tele_status_ok then
	return
end

telescope.load_extension('projects')
