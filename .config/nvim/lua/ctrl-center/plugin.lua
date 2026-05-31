local plugins = {
  require("plugins.blink-cmp"), require("plugins.figdet"), require("plugins.git-integration"), require("plugins.mason"),
  require("plugins.markdown"), require("plugins.mini-hipatterns"), require("plugins.mini-indentscope"),
  require("plugins.oil"), require("plugins.treesitter"), require("plugins.trouble"), require("plugins.vimtex"),
  require("plugins.which-key")
}

for _, plug in ipairs(plugins) do
  vim.pack.add(plug.plugin)

  if type(plug.config) == "function" then
    plug.config()
  end
end
