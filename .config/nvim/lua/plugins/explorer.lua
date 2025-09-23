return {
	"folke/snacks.nvim",
	opts = {
		explorer = {
			hidden = true, -- show dotfiles etc
			ignored = true, -- *actually ignore files listed in .gitignore* or ignore patterns
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
			hidden = true,
			ignored = true,
			exclude = {
				".git",
				"__pycache__",
				"node_modules",
				"*.tmp",
				"*.log",
				".DS_Store",
			},
			sources = {
				files = {
					hidden = true,
					ignored = true,
					exclude = {
						".git",
						"__pycache__",
						"node_modules",
						"*.log",
						"*.tmp",
						".DS_Store",
					},
				},
				explorer = {
					hidden = true,
					ignored = true,
					exclude = {
						".git",
						"__pycache__",
						"node_modules",
						"*.tmp",
						"*.bak",
						".DS_Store",
					},
				},
			},
		},
	},
}
