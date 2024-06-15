-- Lazygit integration
return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>g", desc = "Git" },
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
	},
}
