local present, lspconfig = pcall(require, 'lspconfig')
if not present then
	return
end

require('lsp.lsp-installer')
require('lsp.handlers').setup()
require('lsp.null-ls')
