return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none", -- Clear defaults to avoid conflicts
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    },
  },
}
