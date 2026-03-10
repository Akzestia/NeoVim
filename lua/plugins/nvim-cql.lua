-- lua/plugins/nvim-cql.lua
return {
  {
    "Akzestia/nvim-cql-v2",
    lazy = false,
    config = function()
      require("cql").setup()
    end,
  },
}
