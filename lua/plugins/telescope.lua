return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "build/",
        "target/",
        "external/",
        "node_modules/",
      },
    },
  },
}
