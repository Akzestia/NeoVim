-- colors/Maika.lua
-- Auto-generated from maika.dark.master.definition.json
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "Maika"

local c = {
  bg           = "#24062f", -- textEditorBackground
  bg_dark      = "#260633", -- secondaryBackground
  bg_header    = "#20052a", -- headerColor
  bg_base      = "#24062f", -- baseBackground
  bg_caret     = "#2e0639", -- caretRow
  bg_select    = "#3d1535", -- selectionBackground
  bg_search    = "#234260", -- searchBackground
  bg_fold      = "#310e32", -- foldedTextBackground
  bg_diff_del  = "#1C1B23", -- diff.deleted
  bg_diff_add  = "#1e1028", -- testScopeColor
  fg           = "#c9c9c9", -- foregroundColor
  fg_dim       = "#5c4e68", -- disabledColor
  fg_comment   = "#70677b", -- lineNumberColor
  fg_line_nr   = "#70677b", -- lineNumberColor
  accent       = "#bc5d71", -- accentColor
  accent_stop  = "#5335d2", -- stopColor
  accent_comp  = "#ffacb4", -- iconAccentCompliment
  cyan         = "#89dceb", -- constantColor
  yellow       = "#50cefb", -- classNameColor
  pink         = "#e42b54", -- keywordColor
  green        = "#e09cf3", -- stringColor
  blue         = "#8f8bff", -- htmlTagColor
  key_green    = "#f6e7ba", -- keyColor
  purple       = "#6ebff8", -- iconSecondaryBlend
  border       = "#341140", -- borderColor
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
h(0, "Search",        { bg = c.bg_search, fg = "#b4e5f4" })
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
