vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

require("config.lazy")

require("lspconfig").qmlls.setup({
  cmd = { "qmlls" },
  filetypes = { "qml", "qbs" },
  root_dir = require("lspconfig.util").root_pattern("CMakeLists.txt", ".git", ".qmlls.ini"),
  settings = {
    importPaths = { "/Users/akzestia/Qt/6.10.2/macos/qml" },
  },
})

vim.filetype.add({
  pattern = {
    ["%.env.*"] = "env",
    ["%.env"] = "env",
  },
})
