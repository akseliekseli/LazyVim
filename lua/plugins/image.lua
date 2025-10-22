return {
    {
        "3rd/image.nvim",
        opts = {
            backend = "kitty", -- or "ueberzug" / "wezterm" / "sixel" / "none"
            integrations = {
                markdown = {
                    enabled = true,
                    clear_in_insert_mode = false,
                    download_remote_images = true,
                    only_render_image_at_cursor = false,
                },
                neorg = { enabled = true },
                html = { enabled = true },
            },
            max_width = 400,
            max_height = 12,
            max_height_window_percentage = 90,
            max_width_window_percentage = 90,
            window_overlap_clear_enabled = true,
            window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        },
    },
}
