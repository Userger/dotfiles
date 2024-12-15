return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			blank = {
				chars = {
					".",
				},
			},
		})
	end,
}
