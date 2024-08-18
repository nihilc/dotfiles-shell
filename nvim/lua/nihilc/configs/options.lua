-- Global
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Option
vim.opt.laststatus = 3        -- always show status line and only one
vim.opt.ruler = true          -- show line and column number of cursor
vim.opt.cursorline = true     -- highlights cursor line
vim.opt.showmode = false      -- show mode
vim.opt.signcolumn = "yes"    -- always show sign column
vim.opt.termguicolors = true  -- true color support

vim.opt.number = true         -- line number
vim.opt.numberwidth = 2       -- line number width
vim.opt.relativenumber = true -- line relative number
vim.opt.scrolloff = 8         -- lines of context vertical
vim.opt.sidescrolloff = 8     -- lines of context horizontal
vim.opt.colorcolumn = "80"    -- color column guide
vim.opt.splitright = true     -- new windows below current
vim.opt.splitbelow = true     -- new windows right of current
vim.opt.pumheight = 10        -- pop-up height
vim.opt.pumblend = 0          -- pop-up transparency 0-100
vim.opt.wrap = false          -- line wrap
vim.opt.breakindent = true    -- wrapped lines continue visually indent

vim.opt.smartindent = true    -- smart indent on new line
vim.opt.expandtab = true      -- use spaces
vim.opt.shiftround = true     -- round indent
vim.opt.shiftwidth = 2        -- indent size
vim.opt.tabstop = 2           -- indent size
vim.opt.softtabstop = 2       -- indent size

vim.opt.ignorecase = true     -- ignore case in search
vim.opt.smartcase = true      -- Override ignore case if search has upper case

vim.opt.undofile = true       -- Save undo file
vim.opt.undolevels = 10000    -- number of changes to undo

vim.opt.clipboard = "unnamedplus"

vim.opt.spell = true                          -- enable spell
vim.opt.spelloptions = "camel"                -- fix camelCase spell
vim.opt.spelllang = { "en" }                  -- Spell language

vim.o.foldmethod = "expr"                     -- Use expr to fold
vim.o.foldenable = false                      -- disable folding at startup
vim.o.foldlevelstart = 99                     -- disable folding at startup
vim.o.foldexpr = "nvim_treesitter#foldexpr()" -- use tree-sitter to fold

vim.opt.list = false
vim.opt.listchars = { eol = "¬", tab = "➔ ", trail = "•", nbsp = "␣", extends = "▶", precedes = "◀" }
