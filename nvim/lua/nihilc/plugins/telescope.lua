return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {"node_modules", "build"},
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            height = 0.8,
            width = 80,
            prompt_position = "top",
            mirror = true,
          },
        },
        preview = {
          treesitter = {
            enable = {
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
          },
        },
        mappings = {
          i = {
            ["<m-p>"] = require("telescope.actions.layout").toggle_preview,
            ["<c-l>"] = false,
            ["<down>"] = false,
            ["<up>"] = false,
          },
          n = {
            ["<down>"] = false,
            ["<up>"] = false,
          }
        }
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", function() builtin.find_files({ previewer = false }) end, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fF", function() builtin.git_files({ previewer = false }) end, { desc = "Find Files (Git Files)" })
    vim.keymap.set("n", "<leader>fb", function() builtin.buffers({ previewer = false }) end, { desc = "Find Buffer" })
    vim.keymap.set("n", "<leader>fg", function() builtin.live_grep() end, { desc = "Live Grep" })

    vim.keymap.set("n", "<leader>fG", function()
      local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
      if git_root and #git_root > 0 then
        require("telescope.builtin").live_grep({
          cwd = git_root,
          prompt_title = "Live Grep (Git Files)"
        })
      end
    end, { desc = "Live Grep (Git Files)" })

    vim.keymap.set("n", "<leader>fw", function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end, { desc = "Find Current word" })

    vim.keymap.set("n", "<leader>fW", function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word})
    end, { desc = "Find Current WORD" })

    vim.keymap.set("n", "<leader>ht", function() builtin.help_tags() end, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>hk", function() builtin.keymaps() end, { desc = "Help Keymaps" })
  end,
}
