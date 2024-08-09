-- copilot configr
return {
	"github/copilot.vim",

	config = function()
		-- change the default keymap
		vim.keymap.set(
			"i",
			"<C-y>",
			'copilot#Accept("<CR>")',
			{ expr = true, noremap = true, silent = true, replace_keycodes = false }
		)
		vim.keymap.set("i", "<C-L>", "<Plug>(copilot-accept-line)", { noremap = false })
		vim.keymap.set("i", "<C-Space>", "<Plug>(copilot-suggest)", { noremap = false })
	end,
	-- disable the plugin by default
	enabled = true,
}
