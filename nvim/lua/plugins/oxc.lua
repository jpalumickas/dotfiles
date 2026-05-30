-- oxc tooling: oxlint (linter LSP + auto-fix) + oxfmt (formatter).
-- Mirrors `oxc.oxc-vscode` extension in vscode/extensions.txt.
--
-- Binaries installed via mise (mise/config.toml: `npm:oxlint`, `npm:oxfmt`).
-- Linter diagnostics + formatting flow on save:
--   1. conform runs `oxlint --fix` on the file (auto-fixes what oxlint can)
--   2. conform runs oxfmt (reformats output)
--   3. file written
-- Both formatters are conform.nvim built-ins; no custom commands needed.
--
-- Refs:
--   https://oxc.rs/docs/guide/usage/linter/editors.html
--   https://oxc.rs/docs/guide/usage/formatter/editors.html

return {
  -- 1. Enable the oxlint LSP for in-editor diagnostics.
  -- ts_ls would also surface as a formatter but conform's default
  -- `lsp_format = "fallback"` means LSP only formats when no conform
  -- formatter exists for the filetype — and we wire oxfmt for all JS/TS
  -- variants below, so the fallback never fires.
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      vim.lsp.enable("oxlint")
      return opts
    end,
  },

  -- 2. Wire oxlint --fix then oxfmt through conform. Order in the list is
  -- order of execution; oxlint fixes first, oxfmt then reformats. Both
  -- definitions are built into conform.nvim.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "oxlint", "oxfmt" },
        javascriptreact = { "oxlint", "oxfmt" },
        typescript = { "oxlint", "oxfmt" },
        typescriptreact = { "oxlint", "oxfmt" },
        json = { "oxfmt" },        -- oxlint doesn't touch json
        vue = { "oxlint", "oxfmt" },
      },
    },
  },
}
