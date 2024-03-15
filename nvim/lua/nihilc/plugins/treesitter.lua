return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      -- Web
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "jsonc",
      -- Languages
      "c",
      "cpp",
      "bash",
      "lua",
      "sql",
      "python",
      "php",
      "go",
      "rust",
      "java",
      "kotlin",
      "dart",
      -- Docs / Config
      "markdown",
      "markdown_inline",
      "vimdoc",
      "luadoc",
      "phpdoc",
      "make",
      "cmake",
      "yaml",
      "toml",
      "dockerfile",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<c-space>',
        node_incremental = '<c-j>',
        node_decremental = '<c-k>',
        scope_incremental = false
      },
    },
    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["a="] = { query = "@assignment.outer", desc = "Select outer of Assignment" },
          ["i="] = { query = "@assignment.inner", desc = "Select inner of Assignment" },
          ["l="] = { query = "@assignment.lhs", desc = "Select left side of Assignment" },
          ["r="] = { query = "@assignment.rhs", desc = "Select right side of Assignment" },

          ["ai"] = { query = "@conditional.outer", desc = "Select outer of Conditional" },
          ["ii"] = { query = "@conditional.inner", desc = "Select inner of Conditional" },

          ["al"] = { query = "@loop.outer", desc = "Select outer of Loop" },
          ["il"] = { query = "@loop.inner", desc = "Select inner of Loop" },

          ["ac"] = { query = "@class.outer", desc = "Select outer of Class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner of Class" },

          ["am"] = { query = "@function.outer", desc = "Select outer of Method/Function def" },
          ["im"] = { query = "@function.inner", desc = "Select inner of Method/Function def" },

          ["aa"] = { query = "@parameter.outer", desc = "Select outer of Parameter/Argument" },
          ["ia"] = { query = "@parameter.inner", desc = "Select inner of Parameter/Argument" },

          ["af"] = { query = "@call.outer", desc = "Select outer of Function call" },
          ["if"] = { query = "@call.inner", desc = "Select inner of Function call" },
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>sa"] = { query = "@parameter.inner", desc = "Swap Parameters/Argument with next" },
          ["<leader>sm"] = { query = "@function.outer", desc = "Swap Function with next" },
        },
        swap_previous = {
          ["<leader>sA"] = { query = "@parameter.inner", desc = "Swap Parameters/Argument with prev" },
          ["<leader>sM"] = { query = "@function.outer", desc = "Swap Function with previous" },
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]i"] = { query = "@conditional.outer", desc = "Next Conditional start" },
          ["]l"] = { query = "@loop.outer", desc = "Next Loop start" },
          -- ["]c"] = { query = "@class.outer", desc = "Next Class start" },
          ["]m"] = { query = "@function.outer", desc = "Next Method/Function def start" },
          ["]a"] = { query = "@parameter.inner", desc = "Next Parameter/Argument start" },
          ["]f"] = { query = "@call.outer", desc = "Next Function call start" },
        },
        goto_previous_start = {
          ["[i"] = { query = "@conditional.outer", desc = "Prev Conditional start" },
          ["[l"] = { query = "@loop.outer", desc = "Prev Loop start" },
          -- ["[c"] = { query = "@class.outer", desc = "Prev Class start" },
          ["[m"] = { query = "@function.outer", desc = "Prev Method/Function def start" },
          ["[a"] = { query = "@parameter.inner", desc = "Prev Parameter/Argument start" },
          ["[f"] = { query = "@call.outer", desc = "Prev Function call start" },
        },
        goto_next_end = {
          ["]I"] = { query = "@conditional.outer", desc = "Next Conditional end" },
          ["]L"] = { query = "@loop.outer", desc = "Next Loop end" },
          -- ["]C"] = { query = "@class.outer", desc = "Next Class end" },
          ["]M"] = { query = "@function.outer", desc = "Next Method/Function def end" },
          ["]A"] = { query = "@parameter.inner", desc = "Next Parameter/Argument end" },
          ["]F"] = { query = "@call.outer", desc = "Next Function call end" },
        },
        goto_previous_end = {
          ["[I"] = { query = "@conditional.outer", desc = "Prev Conditional end" },
          ["[L"] = { query = "@loop.outer", desc = "Prev Loop end" },
          -- ["[C"] = { query = "@class.outer", desc = "Prev Class end" },
          ["[M"] = { query = "@function.outer", desc = "Prev Method/Function def end" },
          ["[A"] = { query = "@parameter.inner", desc = "Prev Parameter/Argument end" },
          ["[F"] = { query = "@call.outer", desc = "Prev Function call end" },
        },
      },
    },
  },
}
