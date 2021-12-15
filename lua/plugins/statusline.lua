local present, feline = pcall(require, 'feline')
if not present then
   return
end

feline.setup({
	-- TODO correção bug termguicolor
	-- TODO tema gruvbox
})
