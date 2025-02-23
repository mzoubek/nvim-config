require("mzoubek")
print('hello')

-- indenting to 4 spaces
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

-- always show the tabline
vim.o.showtabline = 2

-- enable relative numbers for lines
vim.opt.number = true
vim.wo.relativenumber = true

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

