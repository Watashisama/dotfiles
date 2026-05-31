return {
  plugin = {
    'https://github.com/stevearc/oil.nvim'
  },
  config = function ()
    require("dependency.oil")

    require("oil").setup()
  end
}
