-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
local list = {
{ key = "l", action = "edit", mode = "n"},
{ key = "<Tab>", action = "edit", mode = "n"}
}

require'nvim-tree'.setup ({
    view = {
        mappings = {
            list = list
        }
    }
})


