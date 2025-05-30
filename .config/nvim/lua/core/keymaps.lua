-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Resize with arrows
vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts)   -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v", opts)     -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s", opts)     -- split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", opts)     -- make split windows equal width & height
vim.keymap.set("n", "<leader>wx", ":close<CR>", opts) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts)   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts)     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts)     --  go to previous tab

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
-- No Highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move line up and Down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":yank<CR>:m .-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", ":yank<CR>:m .+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Up>", ":yank<CR>:m .-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":yank<CR>:m .+1<CR>gv=gv", { noremap = true, silent = true })

-- Copy selected lines
vim.keymap.set("v", "<C-S-Up>", ":t '<-1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<C-S-Down>", ":t '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("v", "<C-S-k>", ":t '<-1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<C-S-j>", ":t '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<C-S-k>", ":t.-1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-j>", ":t.+1<CR>==", { noremap = true, silent = true })

vim.keymap.set("n", "<C-S-Up>", ":t.-1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-Down>", ":t.+1<CR>==", { noremap = true, silent = true })
