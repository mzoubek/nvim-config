function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#c0caf5" }) -- Light text on dark background
	vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#7aa2f7" }) -- Blue for folder names
	vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#7aa2f7", bold = true }) -- Bold blue for opened folder names
	vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#565f89" }) -- Dimmed color for empty folders
	vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#f7768e", bold = true }) -- Red for root folder
	vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = "#bb9af7" }) -- Light purple for symlinks
	vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#f7768e" }) -- Red for git dirty status
	vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#9ece6a" }) -- Green for git new status
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#39ff14" })
end

ColorMyPencils()
