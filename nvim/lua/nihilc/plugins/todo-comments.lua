return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VimEnter',
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Prev Todo" },
      { "<leader>ft", function() vim.cmd("TodoTelescope") end, desc = "Find Todo" },
    },
    opts = {
      signs = false,
      keywords = {
        TODO = { color = "info", },
        NOTE = { color = "hint", alt = { "INFO" } },
        TEST = { color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        WARN = { color = "warn", alt = { "WARNING" } },
        FIX = { color = "error", alt = { "FIXME", "FIXIT", "ISSUE", "ERROR" } },
      },
      colors = {
        info = { "DiagnosticInfo" },
        hint = { "DiagnosticHint" },
        test = { "DiagnosticOk" },
        warn = { "DiagnosticWarn" },
        error = { "DiagnosticError" },
        default = { "Identifier" },
      },
    },
  },
}
