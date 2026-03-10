-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      replace_netrw = true,
    },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" }, -- only header, no startup line
      },
    },
    picker = {
      enabled = false,
      sources = {
        explorer = {
          auto_close = false,
          layout = {
            layout = {
              position = "right",
              height = 1,
              width = 26,
            },
          },
        },
        files = {
          exclude = { "external", "build", "target", "node_modules" },
        },
      },
    },
  },
}
