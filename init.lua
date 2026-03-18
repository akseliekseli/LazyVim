-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
    -- VSCode Neovim
    require("config.lazy")
    require("vscode_keymaps")
else
    require("config.lazy")
    -- Ordinary Neovim
end
