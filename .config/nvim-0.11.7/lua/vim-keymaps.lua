-- Snacks
-- vim.keymap.set("n", "<leader>e", "<cmd>lua Snacks.explorer()<CR>", { desc = "The file tree" })
-- vim.keymap.set("n", "<leader><leader>", "<cmd> lua Snacks.picker.grep()<CR>", { desc = "Grep" })

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>xX",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>cl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- Lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy.nvim" })
-- Mason
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason.nvim" })

-- Nvim
vim.keymap.set("n", "<leader>w", "<cmd>update<cr>", { desc = "Write this change if any" })
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit neovim" })
vim.keymap.set("n", "<leader>s", "<cmd>wq<cr>", { desc = "Write changing and exit neovim" })
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "Go to the Definition" })
vim.keymap.set("n", "<esc>", "<cmd>lua vim.cmd('noh')<cr>", { desc = "Remove highlight" })

-- Conform
vim.keymap.set("n", "<leader>F", function()
	require("conform").format()
end, { desc = "Format Files" })

-- Yazi
-- vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>Yazi<cr>", { desc = "Open yazi at the current file" })
-- vim.keymap.set("n", "<leader>cw", "<cmd>Yazi cwd<cr>", { desc = "Open the file manager in nvim's working directory" })

-- Oil.nvim
vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open files in Oil" })
