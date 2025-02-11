return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
    keys = {
      { "<leader>gg", function() require("neogit").open({ kind = "tab" }) end, desc = "Git Status" },
    }
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '±' },
      },
      attach_to_untracked = true,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        vim.keymap.set('n', ']c', function()
          if vim.wo.diff then return ']c' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, { buffer = bufnr, expr = true, desc = "Next Git hunk" })

        vim.keymap.set('n', '[c', function()
          if vim.wo.diff then return '[c' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, { buffer = bufnr, expr = true, desc = "Prev Git hunk" })
      end
    },
    keys = {
      { "<leader>ga",  function() vim.cmd("Gitsigns stage_hunk") end,                desc = "Git stage hunk" },
      { "<leader>gA",  function() vim.cmd("Gitsigns stage_buffer") end,              desc = "Git stage buffer" },
      { "<leader>gr",  function() vim.cmd("Gitsigns reset_hunk") end,                desc = "Git reset hunk" },
      { "<leader>gR",  function() vim.cmd("Gitsigns reset_buffer") end,              desc = "Git reset buffer" },
      { "<leader>gu",  function() vim.cmd("Gitsigns undo_stage_hunk") end,           desc = "Git undo stage hunk" },
      { "<leader>gv",  function() vim.cmd("Gitsigns preview_hunk") end,              desc = "Git preview" },
      { "<leader>gd",  function() vim.cmd("Gitsigns diffthis") end,                  desc = "Git diff" },
      { "<leader>ugs", function() vim.cmd("Gitsigns toggle_signs") end,              desc = "UI Toggle Git sings" },
      { "<leader>ugn", function() vim.cmd("Gitsigns toggle_numhl") end,              desc = "UI Toggle Git number highlight" },
      { "<leader>ugl", function() vim.cmd("Gitsigns toggle_linehl") end,             desc = "UI Toggle Git line highlight" },
      { "<leader>ugb", function() vim.cmd("Gitsigns toggle_current_line_blame") end, desc = "UI Toggle Git line blame" },
    },
  },
}
