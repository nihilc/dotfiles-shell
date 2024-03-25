return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      sh = { "shfmt" },
      sql = { "sqlfmt" },
      python = { "black" },
      markdown = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
