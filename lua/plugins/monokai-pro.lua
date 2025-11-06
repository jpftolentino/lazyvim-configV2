-- ~/.config/nvim/lua/plugins/monokai-pro.lua
return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000, -- load early
    opts = {
      filter = "pro", -- or "machine" | "ristretto" | etc.
      transparent_background = false,
      terminal_colors = true,
      devicons = true,
      -- If you previously cleared backgrounds for UI plugins, comment this out:
      -- background_clear = { "neo-tree", "telescope", "which-key" },
      styles = {
        comment = { italic = true },
        keyword = { italic = true },
      },
    },
    config = function(_, opts)
      require("monokai-pro").setup(opts)
      vim.cmd("colorscheme monokai-pro")
      -- Re-apply once everything is loaded (mirrors what the picker effectively does)
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,
        callback = function()
          vim.cmd("colorscheme monokai-pro")
        end,
      })
    end,
  },

  -- Tell LazyVim which colorscheme to use (don’t also call another theme elsewhere)
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
