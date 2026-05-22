local mode_map = {
  ["n"] = { "NORMAL", "StatusNormal" },
  ["niI"] = { "NORMAL", "StatusNormal" },
  ["niR"] = { "NORMAL", "StatusNormal" },
  ["niV"] = { "NORMAL", "StatusNormal" },
  ["nt"] = { "NORMAL", "StatusNormal" },
  ["ntT"] = { "NORMAL", "StatusNormal" },
  ["i"] = { "INSERT", "StatusInsert" },
  ["ic"] = { "INSERT", "StatusInsert" },
  ["ix"] = { "INSERT", "StatusInsert" },
  ["v"] = { "VISUAL", "StatusVisual" },
  ["vs"] = { "VISUAL", "StatusVisual" },
  ["V"] = { "V-LINE", "StatusVisual" },
  ["Vs"] = { "V-LINE", "StatusVisual" },
  ["\22"] = { "V-BLOCK", "StatusVisual" },
  ["\22s"] = { "V-BLOCK", "StatusVisual" },
  ["c"] = { "COMMAND", "StatusCommand" },
  ["cv"] = { "EX", "StatusCommand" },
  ["ce"] = { "EX", "StatusCommand" },
  ["t"] = { "TERMINAL", "StatusTerminal" },
  ["!"] = { "TERMINAL", "StatusTerminal" },
  ["r"] = { "REPLACE", "StatusReplace" },
  ["rm"] = { "MORE", "StatusReplace" },
  ["r?"] = { "CONFIRM", "StatusConfirm" },
  ["R"] = { "REPLACE", "StatusReplace" },
  ["Rc"] = { "REPLACE", "StatusReplace" },
  ["Rx"] = { "REPLACE", "StatusReplace" },
  ["Rv"] = { "REPLACE", "StatusReplace" },
  ["Rvc"] = { "REPLACE", "StatusReplace" },
  ["Rvx"] = { "REPLACE", "StatusReplace" },
  ["s"] = { "SELECT", "StatusSelect" },
  ["S"] = { "S-LINE", "StatusSelect" },
  ["\19"] = { "S-BLOCK", "StatusSelect" },
  ["no"] = { "O-PENDING", "StatusPending" },
  ["nov"] = { "O-PENDING", "StatusPending" },
  ["noV"] = { "O-PENDING", "StatusPending" },
  ["no\22"] = { "O-PENDING", "StatusPending" },
}

local function get_mode_component()
  local m = vim.api.nvim_get_mode().mode
  local mode_info = mode_map[m]
  return string.format("%%#%s#  %s  ", mode_info[2], mode_info[1])
end


local function get_line_column_numbers()
  local m = vim.api.nvim_get_mode().mode
  local mode_info = mode_map[m]
  return string.format("%%#%s# %s ", mode_info[2], "%l:%c")
end

_G.get_search_info = function()
  if vim.v.hlsearch == 0 or vim.fn.getreg("/") == "" then
    return ""
  end

  local ok, res = pcall(vim.fn.searchcount, { recompute = 1, maxcount = 999 })

  if ok and res.total and res.total > 0 then
    return string.format(" [%d/%d] ", res.current, res.total)
  end
  return ""
end

_G.Get_diagnostics = function(severity, label)
  local count = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity[severity] })
  if count > 0 then
    return string.format(" %s %d ", label, count)
  end
  return ""
end

function _G.status_line()
  return table.concat({
    get_mode_component(),
    -- "%#StatusFile#%%t",
    "%#StatusLineError#%{v:lua.Get_diagnostics('ERROR', '󰅚')}",
    "%#StatusLineWarn#%{v:lua.Get_diagnostics('WARN', '󰀪')}",
    "%#StatusLineHint#%{v:lua.Get_diagnostics('HINT', '󰌶')}",
    "%#StatusLineHint#%{v:lua.Get_diagnostics('INFO', '󰋽')}",
    "%*",
    "%=",
    "%#StatusLineText2#",
    "%{v:lua.get_search_info()}",
    "%{%reg_recording() != '' ? '%#WinBarRecording#@' . reg_recording() . ' %*' : ''%}",
    "%#StatusLineText#",
    "%y ",

    "%e",
    get_line_column_numbers(),
  })
end

vim.opt.statusline = "%!v:lua.status_line()"
