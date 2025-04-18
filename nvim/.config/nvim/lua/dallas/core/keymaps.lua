-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- change listing binds
keymap.set("i", "<C-j>", "<C-n>", { remap = true, silent = true })
keymap.set("i", "<C-k>", "<C-p>", { remap = true, silent = true })

-- clear search highlights
keymap.set("n", "<leader>on", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Buffers
keymap.set("n", "<leader>d", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

-- quits
keymap.set("n", "<leader>qq", "<cmd>qall<CR>", { desc = "Close Neovim", noremap = true, silent = true })
keymap.set("n", "<leader>qw", "<cmd>wq<CR>", { desc = "Write Quit Buffer", noremap = true, silent = true })

-- Lazy & Plugins

-- Menus
keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Open Lazy menu" })
keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Open Mason menu" })

-- Copilot
keymap.set("n", "<leader>aa", "<cmd>CopilotChatToggle<CR>", { desc = "Toggle Copilot chat" })
keymap.set("n", "<leader>ar", "<cmd>CopilotChatReset<CR>", { desc = "Reset Copilot chat log" })
keymap.set("n", "<leader>as", "<cmd>CopilotChatStop<CR>", { desc = "Stop the current Copilot output" })
keymap.set("n", "<leader>at", "<cmd>CopilotChatTests<CR>", { desc = "Generate test" })
-- Mini
keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open explorer" })
-- Fzf-lua
keymap.set("n", "<leader><leader>", "<cmd>FzfLua files<cr>", { desc = "Fuzzy find files" })
keymap.set("n", "<leader>fo", "<cmd>FzfLua oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fg", "<cmd>FzfLua grep<cr>", { desc = "Grep search" })
keymap.set("n", "<leader>fv", "<cmd>FzfLua grep_visual<cr>", { desc = "Fuzzy find visual selection" })
keymap.set("n", "<leader>fl", "<cmd>FzfLua live_grep<cr>", { desc = "Fuzzy in project" })
keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<cr>", { desc = "Resume grep" })
keymap.set("n", "<leader>fh", "<cmd>FzfLua search_history<CR>", { desc = "Search History" })
keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Show buffers" })
