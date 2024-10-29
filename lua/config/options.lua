-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","

local opt = vim.opt

opt.relativenumber = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.background = 'dark'
opt.autoindent = true
opt.expandtab = false -- Use spaces instead of tabs
opt.list = false -- show some invisible characters (tabs...
opt.colorcolumn = "80" -- color column number 80
