return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--j=10",
            "--pch-storage=memory",
            "--header-insertion=never",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--all-scopes-completion",
            "--cross-file-rename",
            "--background-index-priority=normal",
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              checkOnSave = { command = "clippy" },
              procMacro = { enable = true },
              diagnostics = { experimental = { enable = true } },
            },
          },
        },
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
          settings = {
            deno = {
              enable = true,
              suggest = {
                imports = {
                  hosts = {
                    ["https://deno.land"] = true,
                    ["https://esm.sh"] = true,
                  },
                },
              },
            },
          },
        },
        ts_ls = {
          root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json"),
          single_file_support = false,
        },
      },
    },
  },
}
