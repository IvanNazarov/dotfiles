vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.scriptencoding = "utf-8"
vim.o.encoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.title = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.showmode = false

vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.errorbells = false
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.autochdir = false

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto indent
vim.opt.si = true --Smart indent
vim.opt.wrap = false
vim.opt.backspace = "start,eol,indent"
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.clipboard = "unnamedplus"
--:prepend({ "unnamed", "unnamedplus" })
vim.opt.formatoptions:append({ "r" })
vim.opt.iskeyword:append("-")
vim.opt.mouse:append("a")

vim.g.editorconfig = true

vim.opt.list = true
vim.opt.listchars = { tab = ">-", lead = "·", trail = "·", nbsp = "⎵" }
