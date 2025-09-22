return {
	"folke/snacks.nvim",
	explorer = {
		filtered_items = {
			hide_by_name = {
				".DS_Store",
			},
			hide_by_pattern = {
				".*%.import$", -- Hides all .log files
				".*%.bak$", -- Hides all .bak files
			},
		},
	},
}
