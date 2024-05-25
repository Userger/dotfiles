return {
	-- "folke/tokyonight.nvim",
	-- "bluz71/vim-moonfly-colors",
	-- name = "moonfly",
	-- "mcchrish/zenbones.nvim",
	-- "scottmckendry/cyberdream.nvim",
	-- "catppuccin/nvim",
	-- "navarasu/onedark.nvim",
	-- "ellisonleao/gruvbox.nvim",
	-- "kvrohit/rasmus.nvim",
	-- "javiorfo/nvim-nyctophilia",
	-- "shawnohare/hadalized.nvim",
	"rose-pine/neovim",
	dependencies = { "rktjmp/lush.nvim" },
	lazy = false,
	priority = 1000,
	config = function()
		-- require("gruvbox").setup({
		-- 	invert_selection = false,
		-- 	transparent_mode = false,
		-- })
		-- require("tokyonight").setup({
		-- 	transparent = false,
		-- })
		require("rose-pine").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd([[colorscheme rose-pine]])
	end,
}
