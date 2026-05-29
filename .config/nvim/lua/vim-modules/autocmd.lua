local pattern_old = vim.deepcopy(require("tree-parser"))
table.insert(pattern_old, "qml")
table.insert(pattern_old, "gitconfig")
table.insert(pattern_old, "tex")
vim.api.nvim_create_autocmd("FileType", {
  pattern = pattern_old,
  callback = function ()
    vim.treesitter.start()
  end
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function ()
    local filetype = vim.bo.filetype
    local whitelist = { rust = true, python = true, lua = true }
    if whitelist[filetype] then
      vim.lsp.buf.format()
    end
  end
})
