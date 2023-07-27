local builtin = require("telescope.builtin")

require("telescope").setup({
	defaults = {
		layout_strategy = "horizontal",
		layout_config = { width = 0.9, horizontal = {
			preview_cutoff = 0,
		} },
	},
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
