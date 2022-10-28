local opt = vim.opt
local g = vim.g

opt.number = true
opt.numberwidth = 2

opt.cul = true

opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

opt.completeopt = {"menuone", "noselect"}

opt.signcolumn = "yes"

opt.splitbelow = true
opt.splitright = true

opt.updatetime = 250
opt.timeoutlen = 400

opt.ruler = false

opt.undofile = true

opt.clipboard = "unnamedplus"

opt.termguicolors = true

opt.fillchars = {eob = " "}

g.mapleader = ","

require "plugins"
require "mappings"

vim.cmd "colorscheme catppuccin"
