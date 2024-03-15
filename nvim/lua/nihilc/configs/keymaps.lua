-- General
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
vim.keymap.set({ "n", "i" }, "<c-s>", "<cmd>w<cr>", { desc = "Save File" })

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Navigation
vim.keymap.set("n", "<c-h>", "<c-w><c-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<c-l>", "<c-w><c-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<c-j>", "<c-w><c-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<c-k>", "<c-w><c-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("i", "<c-h>", "<left>", { desc = "Move left" })
vim.keymap.set("i", "<c-l>", "<right>", { desc = "Move right" })
vim.keymap.set("i", "<c-j>", "<down>", { desc = "Move down" })
vim.keymap.set("i", "<c-k>", "<up>", { desc = "Move up" })

vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "keep screen centered when <c-d>" })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "keep screen centered when <c-u>" })
vim.keymap.set("n", "n", "nzzzv", { desc = "keep screen centered when jump next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "keep screen centered when jump prev" })

-- Edition
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- UI
vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<cr>", { desc = "UI Toggle wrap" })
vim.keymap.set("n", "<leader>ul", "<cmd>set list!<cr>", { desc = "UI Toggle list" })
