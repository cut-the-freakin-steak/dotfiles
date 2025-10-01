return {
	"folke/snacks.nvim",
	opts = {
		explorer = {
			hidden = false, -- don’t show dotfiles
			ignored = false, -- hide gitignored files
			exclude = {
				".git",
				"__pycache__",
				"node_modules",
				"*.tmp",
				"*.bak",
				".DS_Store",
			},
		},
		picker = {
			sources = {
				explorer = {
					hidden = false,
					ignored = false,
				},
				files = {
					hidden = false,
					ignored = false,
				},
			},
		},
		hidden = false,
		ignored = true,
	},
}
