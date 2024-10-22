--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local colors = require("chalet_colors")

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn { bg = colors.darker_brown },                             -- Columns set with 'colorcolumn'
    Conceal { fg = colors.black },                                        -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { gui = "inverse" },                                           -- Character under the cursor
    CurSearch { bg = colors.light_orange, fg = colors.black },            -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor { Cursor },                                                   -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { Cursor },                                                  -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = colors.black },                                   -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = colors.black },                                     -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = colors.dark_orange },                                -- Directory names (and other special names in listings)
    DiffAdd { bg = colors.dark_green, fg = colors.white, gui = "bold" },  -- Diff mode: Added line |diff.txt|
    DiffChange { bg = colors.darker_brown, fg = colors.white },           -- Diff mode: Changed line |diff.txt|
    DiffDelete { bg = colors.dark_red, fg = colors.white, gui = "bold" }, -- Diff mode: Deleted line |diff.txt|
    DiffText { bg = colors.dark_purple, fg = colors.white },              -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { fg = colors.darker_brown },                             -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg { fg = colors.dark_red },                          -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    Folded { bg = colors.black, fg = colors.dark_orange },      -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    SignColumn { fg = colors.darker_brown },                    -- Column where |signs| are displayed
    IncSearch { bg = colors.light_purple, fg = colors.white },  -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { bg = colors.light_purple, fg = colors.white }, -- |:substitute| replacement text highlighting
    LineNr { fg = colors.dark_red },                            -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove { fg = colors.light_brown },                    -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow { LineNrAbove },                                -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen { gui = "bold" },         -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = colors.light_brown }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = colors.light_green },                                   -- |more-prompt|
    NonText { fg = colors.darker_brown },                                  -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = colors.white, bg = colors.bg },                          -- Normal text
    NormalFloat { Normal },                                                -- Normal text in floating windows.
    FloatBorder { Normal },                                                -- Border of floating windows.
    FloatTitle { Normal, gui = "bold,underline" },                         -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu { bg = colors.bg, fg = colors.light_brown },                     -- Popup menu: Normal item.
    PmenuSel { bg = colors.black, fg = colors.light_brown, gui = "bold" }, -- Popup menu: Selected item.
    PmenuKind { Pmenu, fg = colors.dark_orange },                          -- Popup menu: Normal item "kind"
    PmenuKindSel { PmenuSel, fg = colors.dark_orange },                    -- Popup menu: Selected item "kind"
    PmenuExtra { Pmenu, fg = colors.dark_yellow },                         -- Popup menu: Normal item "extra text"
    PmenuExtraSel { PmenuSel, fg = colors.dark_yellow },                   -- Popup menu: Selected item "extra text"
    PmenuSbar { Pmenu },                                                   -- Popup menu: Scrollbar.
    PmenuThumb { bg = colors.light_brown },                                -- Popup menu: Thumb of the scrollbar.
    Question { MoreMsg },                                                  -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = colors.dark_green },                               -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { bg = colors.dark_purple, fg = colors.white },                 -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey { fg = colors.light_orange },                               -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title { Normal, gui = "bold" },                  -- Titles for output from ":set all", ":autocmd" etc.
    Visual { bg = colors.dark_red, fg = Normal.bg }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    Whitespace { fg = colors.black },         -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { fg = colors.light_brown }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { fg = colors.darker_brown },     -- Any comment

    Constant { fg = colors.light_blue },      -- (*) Any constant
    String { fg = colors.light_green },       --   A string constant: "this is a string"
    Character { fg = colors.light_blue },     --   A character constant: 'c', '\n'
    Number { fg = colors.dark_purple },       --   A number constant: 234, 0xff
    Boolean { fg = colors.dark_purple },      --   A boolean constant: TRUE, false
    Float { Number },                         --   A floating point constant: 2.3e10

    Identifier { fg = colors.light_brown },   -- (*) Any variable name
    Function { fg = colors.dark_orange },     --   Function name (also: methods for classes)

    Statement { Normal },                     -- (*) Any statement
    Conditional { fg = colors.light_yellow }, --   if, then, else, endif, switch, etc.
    Repeat { Conditional },                   --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator { fg = colors.dark_yellow },     --   "sizeof", "+", "*", etc.
    Keyword { fg = colors.dark_yellow },      --   any other keyword
    Exception { fg = colors.light_red },      --   try, catch, throw

    PreProc { fg = colors.darker_brown },     -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type { fg = colors.light_orange }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special { fg = colors.dark_brown }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter { fg = colors.dark_brown }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    Todo { gui = "bold,underline" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { fg = colors.light_red },                                                         -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { fg = colors.light_yellow },                                                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { fg = colors.light_blue },                                                         -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { fg = colors.light_purple },                                                       -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk { fg = colors.light_green },                                                          -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = colors.dark_red, gui = "italic" },                               -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn { fg = colors.dark_yellow, gui = "italic" },                             -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo { DiagnosticInfo, gui = "italic" },                                      -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint { fg = colors.dark_purple, gui = "italic" },                             -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk { fg = colors.dark_green, gui = "italic" },                                -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError { fg = colors.darker_brown, gui = "underline", sp = colors.light_red },   -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { fg = colors.darker_brown, gui = "underline", sp = colors.light_yellow }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { fg = colors.darker_brown, gui = "underline", sp = colors.light_blue },   -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { fg = colors.darker_brown, gui = "underline", sp = colors.light_purple }, -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk { fg = colors.darker_brown, gui = "underline", sp = colors.light_green },    -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym "@variable" { Identifier }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
