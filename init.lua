-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.swapfile = false

require("config.lazy")

vim.opt.clipboard = "unnamedplus"

require("lspconfig").qmlls.setup({
  cmd = { "qmlls" },
  filetypes = { "qml", "qbs" },
  root_dir = require("lspconfig.util").root_pattern("CMakeLists.txt", ".git", ".qmlls.ini"),
  settings = {
    -- This helps the server find the built-in Qt modules
    importPaths = { "/Users/akzestia/Qt/6.10.2/macos/qml" },
  },
})

vim.filetype.add({
  pattern = {
    ["%.env.*"] = "env",
    ["%.env"] = "env",
  },
})
