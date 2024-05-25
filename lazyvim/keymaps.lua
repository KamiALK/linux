-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("neo-tree").setup({
	filesystem = {
		filtered_items = {
			visible = true, -- Mostrar elementos filtrados
			hide_dotfiles = true,
			hide_gitignored = true,
			hide_hidden = true, -- Solo funciona en Windows para archivos/directorios ocultos
			hide_by_name = {
				".DS_Store",
				"thumbs.db",
				--"node_modules",
			},
			hide_by_pattern = {
				--"*.meta",
				--"*/src/*/tsconfig.json",
			},
			always_show = {
				--".gitignored",
			},
			never_show = {
				--".DS_Store",
				--"thumbs.db",
			},
			never_show_by_pattern = {
				--".null-ls_*",
			},
		},
	},
})
require("neo-tree").setup({
	event_handlers = {

		{
			event = "file_opened",
			handler = function(file_path)
				-- auto close
				-- vimc.cmd("Neotree close")
				-- OR
				require("neo-tree.command").execute({ action = "close" })
			end,
		},
	},
})
