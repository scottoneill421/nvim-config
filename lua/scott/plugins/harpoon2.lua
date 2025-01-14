return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set("n", "<C-h>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-l>", function() harpoon:list():next() end)
	end
}
