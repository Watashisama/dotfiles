local M = {}

function M.setup()
	-- local color = require("kyotonight.colors")
	local hl_color = {
		-- hl-group = { fg = color.lll, bg = color.ll, ... }
	}

	for group, opts in pairs(hl_color) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
