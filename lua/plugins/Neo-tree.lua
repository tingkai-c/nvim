return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default", -- Hijack netrw and open files directly
        use_libuv_file_watcher = true,
      },
      window = {
        position = "current",
      },
    },
  },
}
