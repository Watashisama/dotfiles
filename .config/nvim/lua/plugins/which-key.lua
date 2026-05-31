return {
  plugin = {
    "https://github.com/folke/which-key.nvim"
  },
  config = function ()
    require("which-key").setup({
      preset = "helix"
    })
  end
}
