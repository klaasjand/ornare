-- Home (Absolute start of line)
vim.keymap.set({ "n", "v" }, "<leader><", "0", { desc = "Home (Start of line)" })

-- End (Absolute end of line)
vim.keymap.set({ "n", "v" }, "<leader>>", "$", { desc = "End (End of line)" })

-- Save file with leader + jj
vim.keymap.set("n", "<leader>jj", "<cmd>w<cr>", { desc = "Save File" })
