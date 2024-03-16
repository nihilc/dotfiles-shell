return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "dark",
      transparent = true,
      highlights = {
        ["NormalFloat"] = { bg = "none" },
        ["FloatBorder"] = { fg = "$grey", bg = "none" },
        ["TelescopeBorder"] = { fmt = 'italic' },
        ["TelescopePromptBorder"] = { fg = "$grey" },
        ["TelescopePreviewBorder"] = { fg = "$grey" },
        ["TelescopeResultsBorder"] = { fg = "$grey" },
      },
    },
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  -- { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 },
  -- { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },
}
