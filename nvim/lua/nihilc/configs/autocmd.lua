local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

TheNihilcGroup = augroup("TheNihilc", {})

-- Highlight when yanking text
autocmd("TextYankPost", {
  group = TheNihilcGroup,
  desc = "Highlight when yanking text",
  callback = function()
    vim.highlight.on_yank({ timeout = 250, on_visual = false })
  end,
})

-- Remove white spaces before save
autocmd("BufWritePre", {
  group = TheNihilcGroup,
  desc = "Remove white spaces before save",
  command = "%s/\\s\\+$//e"
})

-- Start terminal in insert mode
autocmd("TermOpen", {
  group   = TheNihilcGroup,
  desc    = "Start terminal in insert mode",
  command = "startinsert | set winfixheight"
})

-- Start git messages in insert mode
autocmd("FileType", {
  group = TheNihilcGroup,
  desc = "Start git messages in insert mode",
  pattern = { "gitcommit", "gitrebase", },
  command = "startinsert | 1"
})
