# Keymaps

## General

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `n` | `<esc>` | Clear search highlight ||
| `n` `i` | `<c-s>` | Save File ||
| `t` | `<esc><esc>` | Exit terminal mode ||

## Files / Search / Help

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `n` | `<leader>te` | Toggle Explorer | Nvim-Tree |
| `n` | `<leader>tu` | Toggle UndoTree | UndoTree |
| `n` | `<leader>ff` | Find Files | Telescope |
| `n` | `<leader>fF` | Find Files (Git Files) | Telescope |
| `n` | `<leader>fb` | Find Buffer | Telescope |
| `n` | `<leader>fg` | Live Grep | Telescope |
| `n` | `<leader>fG` | Live Grep (Git Files) | Telescope |
| `n` | `<leader>fw` | Find Current word | Telescope |
| `n` | `<leader>fW` | Find Current WORD | Telescope |
| `n` | `<leader>ht` | Help Tags | Telescope |
| `n` | `<leader>hk` | Help Keymaps | Telescope |
| `n` `i` (in telescope) | `<m-p>` | Telescope Toggle Preview | Telescope |

## Navigation

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `n` | `<c-h>` | Move focus to the left window ||
| `n` | `<c-l>` | Move focus to the right window ||
| `n` | `<c-j>` | Move focus to the lower window ||
| `n` | `<c-k>` | Move focus to the upper window ||
| `i` | `<c-h>` | Move left ||
| `i` | `<c-l>` | Move right ||
| `i` | `<c-j>` | Move lower ||
| `i` | `<c-k>` | Move upper ||
| `n` | `<c-d>` | keep screen centered when `<c-d>` ||
| `n` | `<c-u>` | keep screen centered when `<c-u>` ||
| `n` | `n` | keep screen centered when jump next ||
| `n` | `N` | keep screen centered when jump prev ||
| `n` | `]c` | Next Git hunk | Gitsigns |
| `n` | `[c` | Prev Git hunk | Gitsigns |
| `n` | `]i` | Next Conditional start | nvim-treesitter |
| `n` | `]I` | Next Conditional end | nvim-treesitter |
| `n` | `[i` | Prev Conditional start | nvim-treesitter |
| `n` | `[I` | Prev Conditional end | nvim-treesitter |
| `n` | `]l` | Next Loop start | nvim-treesitter |
| `n` | `]L` | Next Loop end | nvim-treesitter |
| `n` | `[l` | Prev Loop start | nvim-treesitter |
| `n` | `[L` | Prev Loop end | nvim-treesitter |
| `n` | `]m` | Next Method/Function def start | nvim-treesitter |
| `n` | `]M` | Next Method/Function def end | nvim-treesitter |
| `n` | `[m` | Prev Method/Function def start | nvim-treesitter |
| `n` | `[M` | Prev Method/Function def end | nvim-treesitter |
| `n` | `]a` | Next Parameter/Argument start | nvim-treesitter |
| `n` | `]A` | Next Parameter/Argument end | nvim-treesitter |
| `n` | `[a` | Prev Parameter/Argument start | nvim-treesitter |
| `n` | `[A` | Prev Parameter/Argument end | nvim-treesitter |
| `n` | `]f` | Next Function call start | nvim-treesitter |
| `n` | `]F` | Next Function call end | nvim-treesitter |
| `n` | `[f` | Prev Function call start | nvim-treesitter |
| `n` | `[F` | Prev Function call end | nvim-treesitter |

## Selection / Edition

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `v` | `J` | Move selected lines down ||
| `v` | `K` | Move selected lines up ||
| `n` | `<c-space>` | Select incremental start | nvim-treesitter |
| `v` | `<c-j>` | Select incremental node | nvim-treesitter |
| `v` | `<c-k>` | Select decremental node | nvim-treesitter |
| `n` | `<leader>sa` | Swap Parameters/Argument with next | nvim-treesitter |
| `n` | `<leader>sA` | Swap Parameters/Argument with prev | nvim-treesitter |
| `n` | `<leader>sm` | Swap Method/Function with next | nvim-treesitter |
| `n` | `<leader>sM` | Swap Method/Function with prev | nvim-treesitter |

### nvim-treesitter-textobjects

Use the text objects like `v<keymap>`, `c<keymap>`, `d<keymap>`, Example to delete a loop do `dal`

| Keymap | Description |
| --- | --- |
| `a=` | Select outer of Assignment |
| `i=` | Select inner of Assignment |
| `l=` | Select left side of Assignment |
| `r=` | Select right side of Assignment |
| `ai` | Select outer of Conditional |
| `ii` | Select inner of Conditional |
| `al` | Select outer of Loop |
| `il` | Select inner of Loop |
| `ac` | Select outer of Class |
| `ic` | Select inner of Class |
| `am` | Select outer of Method/Function def |
| `im` | Select inner of Method/Function def |
| `aa` | Select outer of Parameter/Argument |
| `ia` | Select inner of Parameter/Argument |
| `af` | Select outer of Function call |
| `if` | Select inner of Function call |

## Git

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `n` | `<leader>gg` | Git fugitive | vim-fugitive |
| `n` (in fugitive) | `<leader>gp` | Git push | vim-fugitive |
| `n` (in fugitive) | `<leader>gP` | Git pull | vim-fugitive |
| `n` | `<leader>ga` | Git stage hunk | Gitsigns |
| `n` | `<leader>gA` | Git stage buffer | Gitsigns |
| `n` | `<leader>gr` | Git reset hunk | Gitsigns |
| `n` | `<leader>gR` | Git reset buffer | Gitsigns |
| `n` | `<leader>gu` | Git undo stage hunk | Gitsigns |
| `n` | `<leader>gv` | Git preview | Gitsigns |
| `n` | `<leader>gd` | Git diff | Gitsigns |

## UI

| Mode | Keymap | Description | Plugin |
| --- | --- | --- | --- |
| `n` | `<leader>uw` | UI Toggle wrap ||
| `n` | `<leader>ul` | UI Toggle list ||
| `n` | `<leader>ugs` | UI Toggle Git sings | Gitsigns |
| `n` | `<leader>ugn` | UI Toggle Git number highlight | Gitsigns |
| `n` | `<leader>ugl` | UI Toggle Git line highlight | Gitsigns |
| `n` | `<leader>ugb` | UI Toggle Git line blame | Gitsigns |
