local palette = require("nord.palette")
local M = {}

local highlights = function(opts)
    local bold = opts.bold or false
    local italic = opts.italic or false
    local background = opts.transparency and "none" or palette.nord0
    local cursor_line = opts.transparency and "none" or palette.nord0
    local line_number = opts.line_number_pink and palette.nord15 or palette.nord4

    local highlights = {
	["Normal"] = { bg = background },
	["Comment"] = { fg = palette.nord3, italic = italic },
	["Keyword"] = { fg = palette.nord9 },
	["Delimiter"] = { fg = palette.nord9 },
	["Special"] = { fg = palette.nord7, bold = bold },
	["String"] = { fg = palette.nord14 },
	["Operator"] = { fg = palette.nord10 },
	["Function"] = { fg = palette.nord8 },
	["Identifier"] = { fg = palette.nord9 },
	["Constant"] = { fg = palette.nord15 },
	["Type"] = { fg = palette.nord7 },
	["Statusline"] = { bg = background },
	["StatuslineNC"] = { bg = background },
	["CursorLine"] = { bg = background },
	["CursorLineNr"] = { fg = line_number },
	["LineNr"] = { fg = palette.nord2 },
	["Pmenu"] = { bg = background },
	["Directory"] = { fg = palette.nord9 },
	["Visual"] = { bg = palette.nord0 },

	-- treesitter
	["@constructor.lua"] = { fg = palette.nord7 },
	["@module.rust"] = { fg = palette.nord8 },
	["@variable"] = { fg = palette.nord4 },
	["@function.macro.rust"] = { fg = palette.nord15 },

	-- blink
	["BlinkCmpMenuSelection"] = { bg = palette.nord0 },
	["BlinkCmpKind"] = { fg = palette.nord14 },
	["BlinkCmpKindFunction"] = { fg = palette.nord8 },
	["BlinkCmpKindSnippet"] = { fg = palette.nord15 },

	-- Telescope
	["TelescopeSelection"] = { bg = palette.nord0 },
	["TelescopeResultsBorder"] = { fg = palette.nord3 },
	["TelescopeResultsTitle"] = { fg = palette.nord4 },
	["TelescopePromptBorder"] = { fg = palette.nord3 },
	["TelescopePromptTitle"] = { fg = palette.nord4 },
	["TelescopeSelectionCaret"] = { fg = palette.nord4 },
	["TelescopePromptPrefix"] = { fg = palette.nord4 },
	["TelescopeResultsCount"] = { bg = palette.nord4 },

	-- lsp
	["DiagnosticSignError"] = { fg = palette.nord11 },
	["DiagnosticSignWarn"] = { fg = palette.nord13 },
	["DiagnosticSignHint"] = { fg = palette.nord14 },
	["DiagnosticSignInfo"] = { fg = palette.nord15 },
    }

    return highlights
end

M.setup = function(opts)
    for field, value in pairs(highlights(opts)) do
	vim.api.nvim_set_hl(0, field, value)
    end
end

return M
