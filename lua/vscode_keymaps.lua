if not vim.g.vscode then
    return
end

local keymap = vim.keymap.set

-- =========================
-- Jupyter / Notebook keymaps
-- =========================

-- move between cells
keymap({ "n", "v" }, "gj", "<cmd>lua require('vscode').action('notebook.focusNextEditor')<CR>")
keymap({ "n", "v" }, "gk", "<cmd>lua require('vscode').action('notebook.focusPreviousEditor')<CR>")

-- alternative: use ]c and [c
keymap({ "n", "v" }, "]c", "<cmd>lua require('vscode').action('notebook.focusNextEditor')<CR>")
keymap({ "n", "v" }, "[c", "<cmd>lua require('vscode').action('notebook.focusPreviousEditor')<CR>")

-- run cell
keymap({ "n", "v" }, "<leader>rr", "<cmd>lua require('vscode').action('notebook.cell.execute')<CR>")

-- run cell and move down
keymap({ "n", "v" }, "<leader>rn", "<cmd>lua require('vscode').action('notebook.cell.executeAndSelectBelow')<CR>")

-- insert new cells
keymap({ "n", "v" }, "<leader>oa", "<cmd>lua require('vscode').action('notebook.cell.insertAbove')<CR>")
keymap({ "n", "v" }, "<leader>ob", "<cmd>lua require('vscode').action('notebook.cell.insertBelow')<CR>")

-- delete cell
keymap({ "n", "v" }, "<leader>dd", "<cmd>lua require('vscode').action('notebook.cell.delete')<CR>")

-- change cell type
keymap({ "n", "v" }, "<leader>cm", "<cmd>lua require('vscode').action('notebook.cell.changeToMarkdown')<CR>")
keymap({ "n", "v" }, "<leader>cc", "<cmd>lua require('vscode').action('notebook.cell.changeToCode')<CR>")

-- move cells up/down
keymap({ "n", "v" }, "<leader>mk", "<cmd>lua require('vscode').action('notebook.cell.moveUp')<CR>")
keymap({ "n", "v" }, "<leader>mj", "<cmd>lua require('vscode').action('notebook.cell.moveDown')<CR>")

-- select entire cell
keymap({ "n", "v" }, "<leader>ss", "<cmd>lua require('vscode').action('notebook.cell.select')<CR>")

-- focus between editor/output
keymap({ "n", "v" }, "<leader>io", "<cmd>lua require('vscode').action('notebook.cell.focusOutput')<CR>")
keymap({ "n", "v" }, "<leader>ie", "<cmd>lua require('vscode').action('notebook.cell.focusEditor')<CR>")
