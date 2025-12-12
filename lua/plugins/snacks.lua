return {
    "folke/snacks.nvim",
    opts = {
        explorer = {
            files = {
                hidden = true, -- Shows hidden files in the explorer view
            },
        },
        picker = {
            -- Or configure for the picker, often combined with explorer settings
            sources = {
                files = {
                    hidden = true, -- Shows hidden files in the fuzzy finder
                },
            },
        },
    },
}
