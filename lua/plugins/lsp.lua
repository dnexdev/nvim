return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            "--query-driver=/usr/bin/gcc,/usr/bin/g++,/usr/bin/clang++,/opt/homebrew/bin/*",
            "--experimental-modules-support",
          },
        },
        qmlls = {
          cmd = { "qmlls" },
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                library = {
                  "/run/current-system/sw/share/hypr/stubs",
                },
                checkThirdParty = false,
              },
              diagnostics = {
                globals = { "hl" },
              },
            },
          },
        },
      },
    },
  },
}
