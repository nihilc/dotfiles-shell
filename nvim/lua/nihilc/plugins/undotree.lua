return {
  'mbbill/undotree',
  cmd = { "UndotreeFocus", "UndotreeToggle", "UndotreeShow" },
  keys = {
    { '<leader>tu', vim.cmd.UndotreeToggle, desc = 'Toggle Undotree'},
  },
}
