return {
    {
        "sainnhe/everforest",
        init = function()
            vim.g.everforest_transparent_background = 2
        end,
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
}
