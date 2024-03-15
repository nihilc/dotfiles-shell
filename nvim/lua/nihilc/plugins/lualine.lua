return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "auto",
      icons_enabled = false,
      -- ┃│┆
      component_separators = { left = "│", right = "│"},
      section_separators = { left = "", right = ""},
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = { { "mode", fmt = function(str) return str:sub(1,1) end } },
      lualine_b = { "branch", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" }
    },
  },
}
