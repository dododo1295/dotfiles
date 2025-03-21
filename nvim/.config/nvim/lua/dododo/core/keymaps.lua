-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

keymap.set("n", "<leader>qq", ":qall<CR>", { noremap = true, silent = true })

-- Lazy & Plugins

keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Open Lazy menu" })
keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Open Mason menu"})
keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", {desc = "Open Lazygit"})

keymap.set("n", "<leader>aa", "<cmd>CopilotChatToggle<CR>", { desc = "Toggle Copilot chat" })
keymap.set("n", "<leader>am", "<cmd>CopilotChatModel<CR>", { desc = "Change Copilot model" })
keymap.set("n", "<leader>ar", "<cmd>CopilotChatReset<CR>", { desc = "Reset Copilot chat log" })
keymap.set("n", "<leader>as", "<cmd>CopilotChatStop<CR>", { desc = "Stop the current Copilot output" })
keymap.set("n", "<leader>at", "<cmd>CopilotChatTests<CR>", { desc = "Generate test" })

keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "Open explorer" })
