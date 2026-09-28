-- glore.nvim
-- Gothic / high-contrast Neovim colorscheme + nature accents

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "glore"

local p = {
  -- Void
  void       = "#070608",
  black      = "#0D0A0D",
  stone      = "#151114",
  ash        = "#21191D",

  -- Bone
  bone       = "#E8DED0",
  parchment  = "#C9BBAA",
  ash_text   = "#817873",
  dead_text  = "#514B49",

  -- Blood
  wine       = "#4D0D17",
  blood      = "#8F1828",
  crimson    = "#B92338",
  scarlet    = "#D63B4F",

  -- chlorophyll
  tarnished    = "#629C7D",
  chlorophyll  = "#268C6A",

  -- Iron
  iron       = "#707276",
  steel      = "#9A9B9D",

  -- Lichen / decay
  lichen     = "#687052",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ═══════════════════════════════════════════════════════════════
-- Editor
-- ═══════════════════════════════════════════════════════════════

hi("Normal", {
  fg = p.bone,
  bg = p.void,
})

hi("NormalFloat", {
  fg = p.bone,
  bg = p.black,
})

hi("FloatBorder", {
  fg = p.blood,
  bg = p.black,
})

hi("Cursor", {
  fg = p.void,
  bg = p.bone,
})

hi("CursorLine", {
  bg = p.black,
})

hi("CursorColumn", {
  bg = p.black,
})

hi("ColorColumn", {
  bg = p.stone,
})

hi("LineNr", {
  fg = p.dead_text,
})

hi("CursorLineNr", {
  fg = p.chlorophyll,
  bold = true,
})

hi("SignColumn", {
  fg = p.dead_text,
  bg = p.void,
})

hi("Folded", {
  fg = p.ash_text,
  bg = p.stone,
})

hi("FoldColumn", {
  fg = p.dead_text,
  bg = p.void,
})

hi("VertSplit", {
  fg = p.stone,
  bg = p.void,
})

hi("WinSeparator", {
  fg = p.stone,
  bg = p.void,
})

hi("NonText", {
  fg = p.dead_text,
})

hi("Whitespace", {
  fg = p.ash,
})

hi("EndOfBuffer", {
  fg = p.void,
})

-- ═══════════════════════════════════════════════════════════════
-- Search / Selection
-- ═══════════════════════════════════════════════════════════════

hi("Visual", {
  bg = p.wine,
})

hi("VisualNOS", {
  bg = p.wine,
})

hi("Search", {
  fg = p.bone,
  bg = p.blood,
})

hi("IncSearch", {
  fg = p.void,
  bg = p.chlorophyll,
  bold = true,
})

hi("CurSearch", {
  fg = p.void,
  bg = p.chlorophyll,
  bold = true,
})

hi("Substitute", {
  fg = p.bone,
  bg = p.blood,
})

-- ═══════════════════════════════════════════════════════════════
-- Messages
-- ═══════════════════════════════════════════════════════════════

hi("Directory", {
  fg = p.chlorophyll,
  bold = true,
})

hi("Title", {
  fg = p.crimson,
  bold = true,
})

hi("Question", {
  fg = p.chlorophyll,
})

hi("MoreMsg", {
  fg = p.chlorophyll,
})

hi("ModeMsg", {
  fg = p.parchment,
})

hi("WarningMsg", {
  fg = p.chlorophyll,
})

hi("ErrorMsg", {
  fg = p.scarlet,
  bold = true,
})

-- ═══════════════════════════════════════════════════════════════
-- Syntax
-- ═══════════════════════════════════════════════════════════════

hi("Comment", {
  fg = p.ash_text,
  italic = true,
})

hi("Constant", {
  fg = p.parchment,
})

hi("String", {
  fg = p.parchment,
})

hi("Character", {
  fg = p.parchment,
})

hi("Number", {
  fg = p.chlorophyll,
})

hi("Boolean", {
  fg = p.crimson,
  bold = true,
})

hi("Float", {
  fg = p.chlorophyll,
})

hi("Identifier", {
  fg = p.bone,
})

hi("Function", {
  fg = p.scarlet,
})

hi("Statement", {
  fg = p.crimson,
})

hi("Conditional", {
  fg = p.crimson,
  bold = true,
})

hi("Repeat", {
  fg = p.crimson,
})

hi("Label", {
  fg = p.blood,
})

hi("Operator", {
  fg = p.parchment,
})

hi("Keyword", {
  fg = p.crimson,
  bold = true,
})

hi("Exception", {
  fg = p.scarlet,
})

hi("PreProc", {
  fg = p.crimson,
})

hi("Include", {
  fg = p.crimson,
})

hi("Define", {
  fg = p.blood,
})

hi("Macro", {
  fg = p.crimson,
})

hi("PreCondit", {
  fg = p.blood,
})

hi("Type", {
  fg = p.crimson,
})

hi("StorageClass", {
  fg = p.blood,
})

hi("Structure", {
  fg = p.crimson,
})

hi("Typedef", {
  fg = p.blood,
})

hi("Special", {
  fg = p.crimson,
})

hi("SpecialChar", {
  fg = p.crimson,
})

hi("Tag", {
  fg = p.crimson,
})

hi("Delimiter", {
  fg = p.ash_text,
})

hi("Debug", {
  fg = p.scarlet,
})

hi("Underlined", {
  fg = p.chlorophyll,
  underline = true,
})

hi("Ignore", {
  fg = p.dead_text,
})

hi("Error", {
  fg = p.scarlet,
  bold = true,
})

hi("Todo", {
  fg = p.void,
  bg = p.chlorophyll,
  bold = true,
})

-- ═══════════════════════════════════════════════════════════════
-- Tree-sitter
-- ═══════════════════════════════════════════════════════════════

hi("@comment", {
  fg = p.ash_text,
  italic = true,
})

hi("@variable", {
  fg = p.bone,
})

hi("@variable.builtin", {
  fg = p.crimson,
})

hi("@parameter", {
  fg = p.parchment,
})

hi("@constant", {
  fg = p.parchment,
})

hi("@constant.builtin", {
  fg = p.crimson,
})

hi("@string", {
  fg = p.parchment,
})

hi("@string.escape", {
  fg = p.crimson,
})

hi("@character", {
  fg = p.parchment,
})

hi("@number", {
  fg = p.chlorophyll,
})

hi("@boolean", {
  fg = p.crimson,
  bold = true,
})

hi("@function", {
  fg = p.scarlet,
})

hi("@function.call", {
  fg = p.scarlet,
})

hi("@function.builtin", {
  fg = p.crimson,
})

hi("@method", {
  fg = p.scarlet,
})

hi("@method.call", {
  fg = p.scarlet,
})

hi("@constructor", {
  fg = p.scarlet,
})

hi("@type", {
  fg = p.crimson,
})

hi("@type.builtin", {
  fg = p.scarlet,
  bold = true,
})

hi("@keyword", {
  fg = p.crimson,
  bold = true,
})

hi("@keyword.function", {
  fg = p.crimson,
})

hi("@keyword.return", {
  fg = p.crimson,
  bold = true,
})

hi("@operator", {
  fg = p.parchment,
})

hi("@punctuation.delimiter", {
  fg = p.ash_text,
})

hi("@punctuation.bracket", {
  fg = p.iron,
})

hi("@tag", {
  fg = p.crimson,
})

hi("@tag.attribute", {
  fg = p.blood,
})

hi("@attribute", {
  fg = p.blood,
})

hi("@property", {
  fg = p.parchment,
})

hi("@namespace", {
  fg = p.blood,
})

-- ═══════════════════════════════════════════════════════════════
-- Diagnostics / LSP
-- ═══════════════════════════════════════════════════════════════

hi("DiagnosticError", {
  fg = p.scarlet,
})

hi("DiagnosticWarn", {
  fg = p.chlorophyll,
})

hi("DiagnosticInfo", {
  fg = p.steel,
})

hi("DiagnosticHint", {
  fg = p.lichen,
})

hi("DiagnosticUnderlineError", {
  sp = p.scarlet,
  undercurl = true,
})

hi("DiagnosticUnderlineWarn", {
  sp = p.chlorophyll,
  undercurl = true,
})

hi("DiagnosticUnderlineInfo", {
  sp = p.steel,
  undercurl = true,
})

hi("DiagnosticUnderlineHint", {
  sp = p.lichen,
  undercurl = true,
})

hi("LspReferenceText", {
  bg = p.ash,
})

hi("LspReferenceRead", {
  bg = p.ash,
})

hi("LspReferenceWrite", {
  fg = p.scarlet,
  bg = p.ash,
})

-- ═══════════════════════════════════════════════════════════════
-- Statusline
-- ═══════════════════════════════════════════════════════════════

hi("StatusLine", {
  fg = p.parchment,
  bg = p.black,
})

hi("StatusLineNC", {
  fg = p.dead_text,
  bg = p.black,
})

hi("StatusLineAccent", {
  fg = p.bone,
  bg = p.blood,
  bold = true,
})

-- ═══════════════════════════════════════════════════════════════
-- Tabline
-- ═══════════════════════════════════════════════════════════════

hi("TabLine", {
  fg = p.ash_text,
  bg = p.black,
})

hi("TabLineFill", {
  bg = p.void,
})

hi("TabLineSel", {
  fg = p.bone,
  bg = p.wine,
  bold = true,
})

-- ═══════════════════════════════════════════════════════════════
-- Popup / Completion
-- ═══════════════════════════════════════════════════════════════

hi("Pmenu", {
  fg = p.parchment,
  bg = p.black,
})

hi("PmenuSel", {
  fg = p.bone,
  bg = p.wine,
  bold = true,
})

hi("PmenuSbar", {
  bg = p.stone,
})

hi("PmenuThumb", {
  bg = p.blood,
})

hi("PmenuKind", {
  fg = p.chlorophyll,
  bg = p.black,
})

hi("PmenuKindSel", {
  fg = p.chlorophyll,
  bg = p.wine,
})

-- ═══════════════════════════════════════════════════════════════
-- Diff
-- ═══════════════════════════════════════════════════════════════

hi("DiffAdd", {
  fg = p.lichen,
  bg = "#151C12",
})

hi("DiffChange", {
  fg = p.chlorophyll,
  bg = "#1C1810",
})

hi("DiffDelete", {
  fg = p.crimson,
  bg = "#210D12",
})

hi("DiffText", {
  fg = p.bone,
  bg = p.wine,
})

-- ═══════════════════════════════════════════════════════════════
-- Matching / Brackets
-- ═══════════════════════════════════════════════════════════════

hi("MatchParen", {
  fg = p.bone,
  bg = p.blood,
  bold = true,
})

-- ═══════════════════════════════════════════════════════════════
-- Git / Signs
-- ═══════════════════════════════════════════════════════════════

hi("GitSignsAdd", {
  fg = p.lichen,
})

hi("GitSignsChange", {
  fg = p.chlorophyll,
})

hi("GitSignsDelete", {
  fg = p.crimson,
})
