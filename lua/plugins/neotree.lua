return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				hijack_netrw_behavior = "open_default",
				follow_current_file = {
					enabled = true, -- Automatically focus on the current file
					leave_dirs_open = false, -- Optional: Close other folders when following
				},
				use_libuv_file_watcher = true, -- Auto-refresh when files change
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>cd", ":Neotree current reveal dir=%:p:h<CR>", { noremap = true, silent = true })
	end,
}
