require('options')
require('plugins')
require('maps')

function return_to_past_window()
	-- vim.call([[:exe normal <c-w><c-p]])
	-- vim.api.nvim_command('wincmd p')
end

require("nvim-tree").setup({
	view = {
		mappings = {
			list = {
				{ key = "l", action = "edit" },
				{ key = "h", action = "close_node" },
			}
		}
	}
})
require('nvim-web-devicons').setup()
require("toggleterm").setup{
	open_mapping = [[<C-t>]]
}

-- vim.g.nvim_tree_show_icons = {git = 1, folders =  0, files = 0, folder_arrows = 0}
--
function _G.set_terminal_keymaps()
	local opts = {noremap = true}
	vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
