-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local hl = vim.api.nvim_set_hl
        -- Make main editor transparent
        hl(0, "Normal", { bg = "none" })
        hl(0, "NormalNC", { bg = "none" })
        hl(0, "SignColumn", { bg = "none" })
        hl(0, "EndOfBuffer", { bg = "none" })
        -- Make Neo-tree transparent
        hl(0, "NeoTreeNormal", { bg = "none" })
        hl(0, "NeoTreeNormalNC", { bg = "none" })
        hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
        -- Optional: floating window transparency
        hl(0, "NormalFloat", { bg = "none" })
        hl(0, "FloatBorder", { bg = "none" })
    end,
})
