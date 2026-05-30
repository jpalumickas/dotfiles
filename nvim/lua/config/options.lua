-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Leader = "," (matches the VSCode vim plugin's `vim.leader: ","`).
-- Must be set BEFORE plugins load — that's why this file runs first.
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Paths excluded from the picker and `:vimgrep` — mirrors the VSCode
-- `search.exclude` block.
vim.opt.wildignore:append({ "**/dist/*", "**/.wrangler/*", "yarn-error*.log" })

-- Absolute line numbers (VSCode-style). LazyVim default is "relativenumber"
-- which shows distance from the cursor — useful for `5j` jumps but
-- confusing if you're used to reading the actual line number.
vim.opt.relativenumber = false
