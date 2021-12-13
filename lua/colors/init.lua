local o = vim.o
local cmd = vim.cmd

o.background = 'dark'
cmd([[colorscheme gruvbox]])

require("transparent").setup({ enable = true })
