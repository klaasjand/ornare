return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      term_colors = true,
      custom_highlights = function(colors)
        return {
          Comment = { fg = "#A67C6D" },
          LineNr = { fg = colors.overlay0 },
          CursorLineNr = { fg = colors.mauve, style = { "bold" } },
          Whitespace = { fg = colors.surface2 },
          NonText = { fg = colors.surface2 },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
