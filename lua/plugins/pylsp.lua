return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              -- ✅ Enable Ruff
              ruff = { enabled = true },

              -- ❌ Disable built-ins that cause E501
              pycodestyle = { enabled = false },
              pyflakes = { enabled = false },
              mccabe = { enabled = false },

              -- Optional extras
              jedi_completion = { enabled = true },
              jedi_hover = { enabled = true },
              jedi_symbols = { enabled = true },
            },
          },
        },
      },
    },
  },
}
