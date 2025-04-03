return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  require("catppuccin").setup({
    flavour = "frappe",
  }),
}
