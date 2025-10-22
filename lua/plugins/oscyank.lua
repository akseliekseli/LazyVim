return {
  -- other plugins...
  {
    "ojroques/vim-oscyank",
    config = function()
      -- Keymaps
      vim.keymap.set("v", "<leader>y", ":OSCYankVisual<CR>", { silent = true })
      vim.keymap.set("n", "<leader>y", ":OSCYank<CR>", { silent = true })

      -- (Optional) Auto copy every yank into your local clipboard
      vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
          if vim.v.event.operator == "y" and vim.v.event.regname == "" then
            vim.cmd("OSCYankReg \"")
          end
        end,
      })
    end,
  },
}

