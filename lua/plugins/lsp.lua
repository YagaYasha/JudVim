return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--clang-tidy",
            "--background-index",
            "--pch-storage=memory",
            "--header-insertion=never",
            "--completion-style=detailed",
            "--function-arg-placeholders=false",
          },

          init_options = {
            usePlaceholders = true,
            restartAfterCrash = true,
            completeUnimported = true,
            clangdFileStatus = true,
            semanticHighlighting = true,
            fallbackFlags = { "-Wextra", "-Wall", "-Wpedantic" },
          },
          filetypes = { "c", "cpp", "h", "cc", "hpp" },
        },
      },
    },
  },
}
