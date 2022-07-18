local present, feline = pcall(require, 'feline')
if not present then
   return
end

vim.opt.termguicolors = true

feline.setup(
	-- TODO correção bug termguicolor
	-- TODO tema gruvbox
)

