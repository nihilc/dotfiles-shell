local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

TheNihilcGroup = augroup("TheNihilc", {})

autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = TheNihilcGroup,
  callback = function()
    vim.highlight.on_yank({ timeout = 250, on_visual = false })
  end,
})

autocmd("BufWritePre", {
  desc = "Remove white spaces before save",
  group = TheNihilcGroup,
  command = "%s/\\s\\+$//e"
})

autocmd("TermOpen", {
  desc    = "Start terminal in insert mode",
  group   = TheNihilcGroup,
  command = "startinsert | set winfixheight | setlocal nospell"
})

autocmd("FileType", {
  desc = "Start git messages in insert mode",
  group = TheNihilcGroup,
  pattern = { "gitcommit", "gitrebase", },
  command = "startinsert | 1"
})

autocmd("FileType", {
  desc = "Config fold for git logs",
  group = TheNihilcGroup,
  pattern = "git",
  command = "setlocal foldmethod=syntax"
})
