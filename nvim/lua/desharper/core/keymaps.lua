local key = vim.keymap

key.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

key.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
key.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

key.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
key.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
key.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
key.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

key.set("n", "<Tab>", "<cmd>bnext<CR>", { silent = true, desc = "Navigate next buffer" })
key.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { silent = true, desc = "Navigate previous buffer" })
key.set("n", "<leader>w", "<cmd>bdelete<CR>", { silent = true, desc = "Close current buffer" })

key.set("n", "<leader>lf", function()
  require("conform").format()
end, { desc = "Format current buffer" })
-- key.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format current buffer' })

key.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
key.set("n", "<leader>sh", "<C-w>h", { desc = "Split window horizontally" })
key.set("n", "<leader>se", "<C-w>=", { desc = "Set split window equal size" })
key.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" })

key.set("i", "jj", "<esc>", { desc = "Exit insert mode with jj" })
key.set("i", "jk", "<esc>", { desc = "Exit insert mode with jk" })
-- key.set("i", "gl", function()
-- 	vim.diagnostic.open_float()
-- end, { silent = true, desc = "Open diagnostic error popup" })
--
--key.set('n', '<leader>e', '<cmd>Explore<CR>', { silent = true, desc = 'Opent file explorer' })
