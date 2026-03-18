return {
    "vscode-neovim/vscode-neovim",
    lazy = false, -- must load immediately in VSCode
    config = function()
        require("vscode_keymaps")
    end,
}
