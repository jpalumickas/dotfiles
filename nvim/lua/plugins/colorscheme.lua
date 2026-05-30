-- Catppuccin colorscheme (Mocha flavor — darkest, most popular).
-- Other flavors: latte (light), frappe, macchiato.

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",   -- plugin dir name (catppuccin/nvim → catppuccin)
    lazy = false,
    priority = 1000,       -- load before any other plugin that needs colors
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
