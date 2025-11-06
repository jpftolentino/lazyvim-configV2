return {
  -- Disable pylsp completely to avoid duplicate/legacy diagnostics
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = { enabled = false },
      },
    },
  },
}
