-- Show dotfiles by default in the snacks explorer and pickers.
--
-- snacks defaults `hidden` to false/nil for every source, so `.github/`,
-- `.tool-versions`, `.env` etc. are invisible until toggled per-session.
--
-- `hidden` and `ignored` are separate axes: leaving `ignored` off keeps
-- gitignored paths (node_modules/, dist/) out of results, which is the
-- reason to enable only `hidden` here.
--
-- Toggle at runtime if you ever want the opposite:
--   explorer: `H` hidden, `I` gitignored
--   pickers:  `<a-h>` hidden, `<a-i>` gitignored

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = { hidden = true },
        files = { hidden = true },   -- <leader>ff / <leader>fF
        grep = { hidden = true },    -- <leader>sg / <leader>/
      },
    },
  },
}
