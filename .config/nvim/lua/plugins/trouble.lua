return {
  plugin = {
    "https://github.com/folke/trouble.nvim"
    -- lazy = true,
  },
  config = function ()
    require("trouble").setup({})
  end
}
