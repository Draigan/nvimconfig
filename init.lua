require("dre")
vim.cmd [[ au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=100} ]]

print('hello')
