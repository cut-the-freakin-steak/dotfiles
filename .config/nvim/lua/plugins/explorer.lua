return {
	"folke/snacks.nvim",
	explorer = {
		enabled = true,
		-- filters / patterns to ignore in explorer:
		exclude = { ".DS_Store", "*.import" },
		hidden = false, -- whether to show hidden files/folders
		ignored = true,
	},
	picker = {
		enabled = true,
		sources = {
			files = {
				exclude = { ".DS_Store", "*.import" },
				hidden = false,
				ignored = true, -- this might hide things ignored by gitignore (if implemented)
			},
		},
		hidden = false,
		ignored = true,
	},
}
