local plugins = {
  require("plugins.blink-cmp"), require("plugins.figdet"), require("plugins.git-integration"), require("plugins.mason"),
  require("plugins.markdown"), require("plugins.mini-hipatterns"), require("plugins.mini-indentscope"),
  require("plugins.oil"), require("plugins.treesitter"), require("plugins.trouble"), require("plugins.vimtex"),
  require("plugins.which-key")
}

for _, spec in ipairs(plugins) do
  vim.pack.add(spec.plugin)

  if type(spec.config) == "function" then
    spec.config()
  end
end
