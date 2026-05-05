-- See: https://github.com/folke/snacks.nvim/blob/main/docs/explorer.md
return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
