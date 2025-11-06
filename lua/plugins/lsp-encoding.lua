return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.capabilities = opts.capabilities or {}
    opts.capabilities.offsetEncoding = { "utf-8" }
    opts.servers = opts.servers or {}
    -- Ensure key servers inherit UTF-8
    opts.servers.pyright = vim.tbl_deep_extend("force", opts.servers.pyright or {}, {
      capabilities = { offsetEncoding = { "utf-8" } },
    })
    opts.servers.ruff_lsp = vim.tbl_deep_extend("force", opts.servers.ruff_lsp or {}, {
      capabilities = { offsetEncoding = { "utf-8" } },
    })
  end,
}
