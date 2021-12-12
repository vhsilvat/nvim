local packer = require 'plugins.packerinit'
local use = packer.use

return packer.startup(function()
  use 'wbthomason/packer.nvim'
end)
