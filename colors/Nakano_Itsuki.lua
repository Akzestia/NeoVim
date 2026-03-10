-- colors/Nakano_Itsuki.lua
-- Auto-generated from itsuki.light.master.definition.json
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "Nakano_Itsuki"

local c = {
  bg           = "#FFBEBE", -- textEditorBackground
  bg_dark      = "#fc9999", -- secondaryBackground
  bg_header    = "#fcc1c1", -- headerColor
  bg_base      = "#ffc9c9", -- baseBackground
  bg_caret     = "#ffb1b1", -- caretRow
  bg_select    = "#f4665a", -- selectionBackground
  bg_search    = "#FF8EDB", -- searchBackground
  bg_fold      = "#ffb3b3", -- foldedTextBackground
  bg_diff_del  = "#e3aeae", -- diff.deleted
  bg_diff_add  = "#f7b0cf", -- testScopeColor
  fg           = "#101010", -- foregroundColor
  fg_dim       = "#bb928d", -- disabledColor
  fg_comment   = "#D07E72", -- lineNumberColor
  fg_line_nr   = "#D07E72", -- lineNumberColor
  accent       = "#4f52c4", -- accentColor
  accent_stop  = "#3975cb", -- stopColor
  accent_comp  = "#ec8b6a", -- iconAccentCompliment
  cyan         = "#33618E", -- constantColor
  yellow       = "#8D2D1B", -- classNameColor
  pink         = "#B6159D", -- keywordColor
  green        = "#2D4DC2", -- stringColor
  blue         = "#22119E", -- htmlTagColor
  key_green    = "#602C93", -- keyColor
  purple       = "#B6159D", -- iconSecondaryBlend
  border       = "#d99b9b", -- borderColor
  red          = "#FF5555",
}

local h = vim.api.nvim_set_hl

h(0, "Normal",        { fg = c.fg,        bg = c.bg })
h(0, "NormalFloat",   { fg = c.fg,        bg = c.bg_dark })
h(0, "CursorLine",    { bg = c.bg_caret })
h(0, "ColorColumn",   { bg = c.bg_caret })
h(0, "LineNr",        { fg = c.fg_line_nr })
h(0, "CursorLineNr",  { fg = c.accent })
h(0, "SignColumn",    { bg = c.bg })
h(0, "Folded",        { fg = c.fg_dim,    bg = c.bg_fold })
h(0, "FoldColumn",    { fg = c.fg_dim })
h(0, "VertSplit",     { fg = c.border })
h(0, "WinSeparator",  { fg = c.border })
h(0, "Visual",        { bg = c.bg_select })
h(0, "Search",        { bg = c.bg_search, fg = "#323232" })
h(0, "IncSearch",     { bg = c.accent,    fg = "#000000" })

-- Syntax
h(0, "Comment",     { fg = c.fg_comment, italic = true })
h(0, "Constant",    { fg = c.cyan })
h(0, "String",      { fg = c.green })
h(0, "Character",   { fg = c.green })
h(0, "Number",      { fg = c.cyan })
h(0, "Boolean",     { fg = c.pink })
h(0, "Identifier",  { fg = c.fg })
h(0, "Function",    { fg = c.accent })
h(0, "Statement",   { fg = c.pink })
h(0, "Conditional", { fg = c.pink })
h(0, "Repeat",      { fg = c.pink })
h(0, "Keyword",     { fg = c.pink })
h(0, "Operator",    { fg = c.fg_dim })
h(0, "PreProc",     { fg = c.blue })
h(0, "Include",     { fg = c.blue })
h(0, "Type",        { fg = c.yellow })
h(0, "Structure",   { fg = c.yellow })
h(0, "Typedef",     { fg = c.yellow })
h(0, "Special",     { fg = c.key_green })
h(0, "Delimiter",   { fg = c.fg_dim })
h(0, "Underlined",  { fg = c.accent, underline = true })
h(0, "Error",       { fg = c.red })
h(0, "Todo",        { fg = "#000000", bg = c.accent })

-- Tree-sitter
h(0, "@variable",              { fg = c.fg })
h(0, "@variable.builtin",      { fg = c.pink })
h(0, "@function",              { fg = c.accent })
h(0, "@function.builtin",      { fg = c.accent_stop })
h(0, "@function.call",         { fg = c.accent })
h(0, "@method",                { fg = c.accent })
h(0, "@keyword",               { fg = c.pink })
h(0, "@keyword.function",      { fg = c.pink })
h(0, "@keyword.return",        { fg = c.pink })
h(0, "@string",                { fg = c.green })
h(0, "@string.escape",         { fg = c.key_green })
h(0, "@number",                { fg = c.cyan })
h(0, "@boolean",               { fg = c.pink })
h(0, "@constant",              { fg = c.cyan })
h(0, "@constant.builtin",      { fg = c.cyan })
h(0, "@type",                  { fg = c.yellow })
h(0, "@property",              { fg = c.key_green })
h(0, "@field",                 { fg = c.key_green })
h(0, "@comment",               { fg = c.fg_comment, italic = true })
h(0, "@punctuation.delimiter", { fg = c.fg_dim })
h(0, "@operator",              { fg = c.fg_dim })

-- Diagnostics
h(0, "DiagnosticError",          { fg = c.red })
h(0, "DiagnosticWarn",           { fg = c.yellow })
h(0, "DiagnosticInfo",           { fg = c.cyan })
h(0, "DiagnosticHint",           { fg = c.fg_dim })
h(0, "DiagnosticOk",             { fg = c.accent })
h(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.red })
h(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
h(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = c.cyan })
h(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = c.fg_dim })

-- Diff
h(0, "DiffAdd",    { bg = c.bg_diff_add })
h(0, "DiffChange", { bg = c.bg_fold })
h(0, "DiffDelete", { bg = c.bg_diff_del, fg = c.bg_diff_del })
h(0, "DiffText",   { bg = c.bg_select })

h(0, "GitSignsAdd",    { fg = c.cyan })
h(0, "GitSignsChange", { fg = c.yellow })
h(0, "GitSignsDelete", { fg = c.red })

-- Snacks Dashboard
h(0, "SnacksDashboardNormal",  { fg = c.fg,    bg = "none" })
h(0, "SnacksDashboardIcon",    { fg = c.accent })
h(0, "SnacksDashboardDesc",    { fg = c.green })
h(0, "SnacksDashboardKey",     { fg = c.pink })
h(0, "SnacksDashboardSpecial", { fg = c.cyan })
h(0, "SnacksDashboardHeader",  { fg = c.yellow })
