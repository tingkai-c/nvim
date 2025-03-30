return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  config = function()
    require("flutter-tools").setup({
      ui = {
        notification_style = "plugin", -- Or "native"
      },
    })
  end,
}
