-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Cmd-P / Ctrl-P open the file picker (VSCode muscle memory).
-- LazyVim's defaults use <leader><space> and <leader>ff for the same thing;
-- these are just extra bindings.
local find_files = function()
  Snacks.picker.files()
end
vim.keymap.set("n", "<C-p>", find_files, { desc = "Find Files" })
vim.keymap.set("n", "<D-p>", find_files, { desc = "Find Files" })

-- macOS Cmd shortcuts. These rely on the Kitty Keyboard Protocol — Ghostty
-- and nvim 0.10+ negotiate it automatically, so Cmd-keys reach nvim
-- instead of getting eaten by the terminal. If `:lua print(vim.fn.keytrans(
-- vim.fn.getcharstr()))` followed by Cmd+S shows `<D-s>`, these work.
-- If it shows just `s`, the protocol isn't active — see ghostty/config.

-- Cmd+S → save (from any mode).
vim.keymap.set({ "n", "i", "v", "x" }, "<D-s>", "<cmd>write<cr>", { desc = "Save" })

-- Cmd+W → close current buffer, keep window/layout (Snacks does the right
-- thing when it's the last buffer in a window).
vim.keymap.set("n", "<D-w>", function()
  Snacks.bufdelete()
end, { desc = "Close Buffer" })
