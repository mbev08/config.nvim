local trouble = require("trouble")

trouble.setup({
  modes = {
    preview_float = {
      mode = "lsp_references",
      preview = {
        type = "float",
        relative = "editor",
        border = "rounded",
        title = "Preview",
        title_pos = "center",
        position = { 0, -2 },
        size = { width = 0.3, height = 0.3 },
        zindex = 200,
      },
    },
  },
})

vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")
vim.keymap.set("n", "<leader>tS", "<cmd>Trouble symbols toggle focus=false<CR>")
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=true<CR>")
vim.keymap.set("n", "<leader>tR", "<cmd>Trouble lsp_references toggle focus=false<CR>")
vim.keymap.set("n", "<leader>tr", "<cmd>Trouble lsp_references toggle focus=true<CR>")
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>")

vim.keymap.set("n", "[t", function()
  trouble.next({ skip_groups = true, jump = true })
end)

vim.keymap.set("n", "]t", function()
  trouble.previous({ skip_groups = true, jump = true })
end)
