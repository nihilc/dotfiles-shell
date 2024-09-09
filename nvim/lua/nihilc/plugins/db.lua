return {
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dotenv",
      "tpope/vim-dadbod",
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
    },
    keys = {
      { "<leader>td", function() vim.cmd("DBUIToggle") end, desc = "Toggle Database UI" }
    },
    init = function()
      vim.g.db_ui_winwidth = 30
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_show_help = 0
      vim.g.db_ui_force_echo_notifications = 1
      vim.g.db_ui_hide_schemas = { "pg_catalog", "pg_toast" }
      vim.g.db_ui_execute_on_save = 0
    end,
  },
}
