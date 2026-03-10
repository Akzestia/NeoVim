return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      extra_groups = {
        -- snacks dashboard
        "SnacksDashboard",
        "SnacksDashboardHeader",
        "SnacksDashboardFooter",
        "SnacksDashboardKey",
        "SnacksDashboardDesc",
        "SnacksDashboardIcon",
        -- common UI elements
        "NormalFloat",
        "NvimTreeNormal",
        "Neo-treeNormal",
      },
      exclude_groups = {},
    })
  end,
}
