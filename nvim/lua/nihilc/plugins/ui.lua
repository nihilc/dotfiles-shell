return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VimEnter',
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end, desc = "Next Todo" },
      { "[t",         function() require("todo-comments").jump_prev() end, desc = "Prev Todo" },
      { "<leader>ft", function() vim.cmd("TodoTelescope") end,             desc = "Find Todo" },
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
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        icons_enabled = false,
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { { "mode", fmt = function(str) return str:sub(1, 1) end } },
        lualine_b = { "branch", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      winbar = {
        lualine_c = { { "navic", color_correction = nil, navic_opts = nil } },
      }

    },
  },
  {
    "laytan/cloak.nvim",
    opts = {
      enabled = true,
      cloak_character = "*",
      highlight_group = "Comment",
      patterns = {
        {
          file_pattern = { ".env*" },
          cloak_pattern = "=.+"
        },
      },
    }
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = false,
        AARRGGBB = false,
        rgb_fn = true,
        hsl_fn = true,
        css = false,
        css_fn = false,
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "virtualtext",
        virtualtext = "■",
        -- Available methods are false / true / "lsp" / "both"
        tailwind = false,
        sass = { enable = false, parsers = { "css" }, },
        always_update = false
      },
    }
  },
  {
    "folke/which-key.nvim",
    version = "2.1.0",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    config = function()
      require("which-key").setup({
        window = {
          border = "single",
          position = "bottom",
          margin = { 2, 0.1, 2, 0.1 },
          padding = { 0, 0, 0, 0 },
        },
        layout = {
          height = { min = 5, max = 10 }, -- min and max height of the columns
          width = { min = 25, max = 50 }, -- min and max width of the columns
          spacing = 2,                    -- spacing between columns
          align = "center",               -- align columns left, center or right
        },
        show_help = true,
      })
      require("which-key").register({
        ["<leader>"] = {
          f = { name = "Find" },
          g = { name = "Git" },
          h = { name = "Help" },
          s = { name = "Swap" },
          t = { name = "Toggle" },
          u = { name = "UI" },
        },
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        highlights = {
          FloatBorder = {
            link = 'FloatBorder',
          },
        },
        float_opts = {
          border = 'single',
          width = 120,
          height = 30,
          winblend = 0,
          title_pos = 'center'
        },
      })
      vim.keymap.set({ "n", "t" }, "<m-t>", function()
        vim.cmd("ToggleTerm direction=float")
      end, { desc = "Toggle Term Float" })
      vim.keymap.set({ "n", "t" }, "<m-h>", function()
        vim.cmd("ToggleTerm direction=horizontal")
      end, { desc = "Toggle Term Float" })
      vim.keymap.set({ "n", "t" }, "<m-v>", function()
        vim.cmd("ToggleTerm direction=vertical size=40")
      end, { desc = "Toggle Term Float" })
    end,
  },
  {
    "ThePrimeagen/harpoon",
    config = function()
      local harpoon = require("harpoon")
      harpoon.setup()
      vim.keymap.set("n", "<leader>e", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon Quick Menu" })
      vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file, { desc = "Harpoon Add" })
      vim.keymap.set("n", "<leader>n", require("harpoon.ui").nav_next, { desc = "Harpoon Nav Next" })
      vim.keymap.set("n", "<leader>p", require("harpoon.ui").nav_prev, { desc = "Harpoon Nav Prev" })
    end
  },
  {
    "folke/zen-mode.nvim",
    keys = {
      { "<leader>z", function() require("zen-mode").toggle() end, desc = "Toggle Zenmode" },
    }
  },
}
