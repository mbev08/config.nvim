-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 10

vim.opt.timeoutlen = 300
vim.opt.colorcolumn = "80"

vim.wo.foldmethod = "expr"
--vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
--vim.opt.foldlevelstart = 99

--function _G.CustomFoldText()
--  local start_line = vim.fn.getline(vim.v.foldstart)
--  local end_line = vim.fn.getline(vim.v.foldend):gsub("^%s*", "")
--  return start_line .. " ... " .. end_line
--end
--vim.opt.foldtext = "v:lua.CustomFoldText()"

--gold
--vim.api.nvim_set_hl(0, "Folded", { fg = "gold", bg = "black" })
