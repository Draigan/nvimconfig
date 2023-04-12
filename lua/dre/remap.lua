-- set leader
vim.g.mapleader = " "
-- basic vim tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- save
vim.keymap.set("n", "<C-s>", ":w <cr>")
--Quit
vim.keymap.set("n", "<C-x>", ":qa! <cr>")

vim.keymap.set("n", "<leader>0", "gcc")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Fix J
vim.keymap.set("n", "J", "mzJ`z")
-- Keep cursors in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Nvim Tree
-- vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.api.nvim_set_keymap("n", "<leader>fn", ":NvimTreeToggle<CR>",
  { silent = true, noremap = true }
)
--
vim.api.nvim_set_keymap("n", "<leader>f", ":Format>",
  { silent = true, noremap = true }
)


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])


-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- Term
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>:ToggleTerm<cr>",
  { silent = true, noremap = true }
)
