return {
	"folke/paint.nvim",
	config = function()
		local hlmap = {
			-- ["^#%s+(.-)%s*$"] = "Operator",
			-- ["^##%s+(.-)%s*$"] = "Type",
			-- ["^###%s+(.-)%s*$"] = "String",
			-- ["^####%s+(.-)%s*$"] = "Constant",
			-- ["^#####%s+(.-)%s*$"] = "Number",
			-- ["^######%s+(.-)%s*$"] = "Error",
			["^# .*"] = "Operator",
			["^## .*"] = "Type",
			["^### .*"] = "String",
			["^#### .*"] = "Constant",
			["^##### .*"] = "Number",
			["^###### .*"] = "Error",
		}

		local highlights = {}
		for pattern, hl in pairs(hlmap) do
			table.insert(highlights, {
				filter = { filetype = "markdown" },
				pattern = pattern,
				hl = hl,
			})
		end

		require("paint").setup({
			---@type PaintHighlight[]
			highlights = highlights,
		})
	end,
}
