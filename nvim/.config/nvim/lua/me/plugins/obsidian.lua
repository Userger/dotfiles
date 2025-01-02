return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	config = function()
		local obsidian = require("obsidian")
		obsidian.setup({
			workspaces = {
				{
					name = "personal",
					path = "~/obsidian/global",
				},
			},
			ui = {
				enable = true,
			},
			daily_notes = {
				folder = "daily",
			},
			note_id_func = function(title)
				return os.date("%Y-%m-%d") .. "_" .. title
			end,
			---@return table
			note_frontmatter_func = function()
				return {}
			end,
			templates = {
				folder = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M",
				-- A map for custom variables, the key should be the variable and the value a function
				substitutions = {},
			},
		})

		vim.keymap.set("n", "<leader>ot", ":ObsidianTemplate<CR>")
	end,
}
