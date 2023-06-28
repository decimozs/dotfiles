-- keymap configurations
vim.g.mapleader = " "

local keymap = vim.keymap   -- global variables for setting keys

-- general keymaps

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")   -- split window horizontall
keymap.set("n", "<leader>se", "<C-w>=")   -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>")   -- close current split window

-- managing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>1", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>2", ":tabp<CR>") --  go to previous tab

-- keymaps for plugins

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags


