return {
    {
        "sainnhe/everforest",
        init = function()
            vim.g.everforest_transparent_background = 2
            vim.g.everforest_background = "medium"
            vim.g.everforest_better_performance = 1
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
}
