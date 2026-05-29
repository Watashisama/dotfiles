-- local function buf_build(client, bufnr)
-- local win = vim.api.nvim_get_current_win()
-- local params = vim.lsp.util.make_position_params(win, client.offset_encoding)
-- client:request('textDocument/build', params, function (err, result)
-- if err then
-- error(tostring(err))
-- end
-- local texlab_build_status = { [0] = 'Success', [1] = 'Error', [2] = 'Failure', [3] = 'Cancelled' }
-- vim.notify('Build ' .. texlab_build_status[result.status], vim.log.levels.INFO)
-- end, bufnr
-- )
-- end
--
-- local function buf_search(client, bufnr)
-- local win = vim.api.nvim_get_current_win()
-- local params = vim.lsp.util.make_position_params(win, client.offset_encoding)
-- client:request('textDocument/forwardSearch', params, function (err, result)
-- if err then
-- error(tostring(err))
-- end
-- local texlab_forward_status = { [0] = 'Success', [1] = 'Error', [2] = 'Failure', [3] = 'Unconfigured' }
-- vim.notify('Search ' .. texlab_forward_status[result.status], vim.log.levels.INFO)
-- end, bufnr
-- )
-- end
--
-- local function buf_cancel_build(client, bufnr)
-- return client:exec_cmd({
-- title = 'cancel',
-- command = 'texlab.cancelBuild'
-- }, { bufnr = bufnr })
-- end
--
-- local function dependency_graph(client)
-- client:exec_cmd({ command = 'texlab.showDependencyGraph' }, { bufnr = 0 }, function (err, result)
-- if err then
-- return vim.notify(err.code .. ': ' .. err.message, vim.log.levels.ERROR)
-- end
-- vim.notify('The dependency graph has been generated:\n' .. result, vim.log.levels.INFO)
-- end)
-- end
--
-- local function command_factory(cmd)
-- local cmd_tbl = { Auxiliary = 'texlab.cleanAuxiliary', Artifacts = 'texlab.cleanArtifacts' }
-- return function (client, bufnr)
-- return client:exec_cmd({
-- title = ('clean_%s'):format(cmd),
-- command = cmd_tbl[cmd],
-- arguments = { { uri = vim.uri_from_bufnr(bufnr) } }
-- },
-- { bufnr = bufnr }, function (err, _)
-- if err then
-- vim.notify(('Failed to clean %s files: %s'):format(cmd, err.message), vim.log.levels.ERROR)
-- else
-- vim.notify(('Command %s executed successfully'):format(cmd), vim.log.levels.INFO)
-- end
-- end)
-- end
-- end
--
-- local function buf_find_envs(client, bufnr)
-- local win = vim.api.nvim_get_current_win()
-- client:exec_cmd({
-- command = 'texlab.findEnvironments',
-- arguments = { vim.lsp.util.make_position_params(win, client.offset_encoding) }
-- },
-- { bufnr = bufnr }, function (err, result)
-- if err then
-- return vim.notify(err.code .. ': ' .. err.message, vim.log.levels.ERROR)
-- end
-- local env_names = {}
-- local max_length = 1
-- for _, env in ipairs(result) do
-- table.insert(env_names, env.name.text)
-- max_length = math.max(max_length, string.len(env.name.text))
-- end
-- for i, name in ipairs(env_names) do
-- env_names[i] = string.rep(' ', i - 1) .. name
-- end
-- vim.lsp.util.open_floating_preview(env_names, '', {
-- height = #env_names,
-- width = math.max((max_length + #env_names - 1), (string.len 'Environments')),
-- focusable = false,
-- focus = false,
-- title = 'Environments'
-- })
-- end)
-- end
--
-- local function buf_change_env(client, bufnr)
-- vim.ui.input({ prompt = 'New environment name: ' }, function (input)
-- if not input or input == '' then
-- return vim.notify('No environment name provided', vim.log.levels.WARN)
-- end
-- local pos = vim.api.nvim_win_get_cursor(0)
-- return client:exec_cmd({
-- title = 'change_environment',
-- command = 'texlab.changeEnvironment',
-- arguments = {
-- {
-- textDocument = { uri = vim.uri_from_bufnr(bufnr) },
-- position = { line = pos[1] - 1, character = pos[2] },
-- newName = tostring(input)
-- }
-- }
-- }, { bufnr = bufnr })
-- end)
-- end

vim.lsp.config('texlab', {
  cmd = { "texlab" },
  filetypes = { "tex", "bib" },
  settings = {
    texlab = {
      auxDirectory = ".",
      bibtexFormatter = "texlab",
      build = {
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        executable = "latexmk",
        forwardSearchAfter = false,
        onSave = false
      },
      chktex = {
        onEdit = false,
        onOpenAndSave = false
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        args = {}
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false
      }
    }
  }
})

vim.lsp.enable('texlab')
