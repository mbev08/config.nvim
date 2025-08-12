-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--------------------------------------------------------------------
-- Documentation
--
--	-------------------------------
-- 	Modes
-- 		(n) Normal
-- 		(v) Visual
-- 		(N) Visual Line
-- 		(x) Visual Block
-- 		(s) Select - same as visual, but allows you to overwrite selected text.
-- 		(o) Operator Pending - when vim waits for navigation (e.g. d or y)
-- 		(i) Insert
-- 		(c) Command Line - used for entering commands (e.g. :, /, ?)
-- 		(t) Terminal - used for interacting with the terminal inside vim
--

--------------------------------------------------------------------
-- Leader
vim.g.mapleader = " "

--------------------------------------------------------------------
-- Shortcuts - Vim Motions
-------------------------------
---- Default Mode

-- copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- copy to clipboard (entire line)
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- paste over text but don't record in registry
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete but don't record in registry.
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- overwrite CTRL+Z to Redo.
vim.keymap.set("n", "<C-z>", "<C-r>")

-- join line below current line, then return to original cursor position.
vim.keymap.set("n", "J", "mzJ`z")

-- cancel highlighted search matches
vim.keymap.set("n", "<leader>/", "<cmd>:nohls<CR>")

-- scroll up and center screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- scroll down and center screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- format syntax using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-------------------------------
---- Visual Mode

-- shift selected text down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- shift selected text up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- overwrite move line defaults from LazyVim.
vim.keymap.del({ "n", "v", "i" }, "<A-j>")
vim.keymap.del({ "n", "v", "i" }, "<A-k>")

--------------------------------------------------------------------
-- Shortcuts - Call Other ...
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- test tt fs
