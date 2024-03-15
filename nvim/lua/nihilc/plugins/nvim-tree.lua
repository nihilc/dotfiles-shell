return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
  keys = {
    { "<leader>te", function() vim.cmd("NvimTreeToggle") end, desc = "Toggle Explorer" }
  },
  opts = {
    view = {
      float = {
        enable = true,
        open_win_config = {
          relative = "editor",
          border = "rounded",
          width = 30,
          height = 25,
          row = 0,
          col = 999,
        }
      },
    },
    renderer = {
      add_trailing = true,
      special_files = {
        "Makefile",
        "README.md",
        "readme.md",
        "composer.json",
        "package.json",
      },
      root_folder_label = function(path)
        return "../" .. vim.fn.fnamemodify(path, ":t")
      end,
      indent_markers = {
        enable = true,
      },
      icons = {
        git_placement = 'signcolumn',
        show = {
          file = false,
          folder = false,
          folder_arrow = false,
          modified = false,
        },
      },
    },
    git = {
      enable = true,
      show_on_open_dirs = false,
    },
    modified = {
      enable = true,
      show_on_open_dirs = false,
    },
  },
}
