-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

-- hop
map("n", "<leader>hw", "<cmd>HopWord<cr>", { desc = "Hop to a word" })

--  harpoon
map("n", "<leader>ha", ':lua require("harpoon.mark").add_file()<cr>', { desc = "Add file to the harpoon" })
map("n", "<leader>hs", ':lua require("harpoon.ui").toggle_quick_menu()<cr>', { desc = "Show harpoon menu" })
map("n", "<F1>", ':lua require("harpoon.ui").nav_file(1)<cr>', { desc = "Jump to file 1" })
map("n", "<F2>", ':lua require("harpoon.ui").nav_file(2)<cr>', { desc = "Jump to file 2" })
map("n", "<F3>", ':lua require("harpoon.ui").nav_file(3)<cr>', { desc = "Jump to file 3" })
map("n", "<F4>", ':lua require("harpoon.ui").nav_file(4)<cr>', { desc = "Jump to file 4" })

--copilot
-- map("n", "<leader>cc", "<cmd>lua require('copilot').complete()<cr>", { desc = "Copilot complete" })
vim.keymap.set("i", "<F5>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
