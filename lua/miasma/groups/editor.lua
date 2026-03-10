local palette = require("miasma.palette")
local config = require("miasma.config")

---Get editor highlight groups
---@return table<string, vim.api.keyset.highlight>
local function get()
  local p = palette
  local transparent = config.transparent

  local bg = transparent and p.none or p.bg
  local bg_dark = transparent and p.none or p.dark
  local bg_darker = transparent and p.none or p.darker

  return {
    -- Core editor
    Normal = { fg = p.fg, bg = bg },
    NormalNC = { fg = p.fg, bg = bg },
    NormalFloat = { fg = p.fg, bg = bg_dark },
    FloatBorder = { fg = p.brown, bg = bg_dark },
    FloatTitle = { link = "Title" },
    FloatShadow = { bg = p.darkest },
    FloatShadowThrough = { bg = "#151515" },

    -- Cursor
    Cursor = { fg = p.bg, bg = p.brown },
    lCursor = { fg = p.bg, bg = p.fg },
    CursorLine = { bg = bg_dark },
    CursorColumn = { bg = bg_dark },
    CursorLineNr = { fg = p.olive, bg = bg_dark, bold = true },
    TermCursor = { reverse = true },

    -- Line numbers & columns
    LineNr = { fg = p.gray, bg = bg_dark },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },
    SignColumn = { fg = p.gray, bg = bg_dark },
    FoldColumn = { fg = p.gray, bg = bg_dark },
    ColorColumn = { bg = p.bg },
    CursorLineFold = { link = "FoldColumn" },
    CursorLineSign = { link = "SignColumn" },

    -- Splits & separators
    VertSplit = { fg = p.dark, bg = p.bg },
    WinSeparator = { link = "VertSplit" },

    -- Status line
    StatusLine = { fg = p.fg, bg = transparent and p.none or p.bg, bold = true },
    StatusLineNC = { fg = p.gray, bg = transparent and p.none or p.bg, bold = true },
    WinBar = { bg = transparent and p.none or nil, bold = true },
    WinBarNC = { link = "WinBar" },
    MsgSeparator = { link = "StatusLine" },

    -- Tab line
    TabLine = { fg = p.gray, bg = bg_darker },
    TabLineFill = { fg = p.tan, bg = transparent and p.none or p.bg },
    TabLineSel = { fg = p.darker, bg = p.olive, bold = true },
    TabLineSelSep = { fg = p.olive, bg = p.dark, bold = true },
    TabLineSep = { fg = p.darker, bg = p.bg },

    -- Popup menu
    Pmenu = { fg = p.fg, bg = bg_dark },
    PmenuSel = { fg = p.bg, bg = p.olive },
    PmenuSbar = { bg = p.gray },
    PmenuThumb = { fg = p.fg, bg = p.fg },
    PmenuKind = { link = "Pmenu" },
    PmenuKindSel = { link = "PmenuSel" },
    PmenuExtra = { link = "Pmenu" },
    PmenuExtraSel = { link = "PmenuSel" },

    -- Wildmenu
    WildMenu = { fg = "black", bg = p.tan },

    -- Search & matches
    Search = { fg = p.bg, bg = p.green },
    IncSearch = { fg = p.bg, bg = p.rust },
    CurSearch = { link = "Search" },
    Substitute = { link = "Search" },
    MatchParen = { fg = p.fg, bold = true, underline = true },

    -- Visual mode
    Visual = { fg = p.bg, bg = p.olive },

    -- Folding
    Folded = { fg = p.orange, bg = p.dark },

    -- Messages
    ModeMsg = { bold = true },
    MoreMsg = { fg = p.green, bold = true },
    Question = { fg = p.green, bold = true },
    ErrorMsg = { fg = p.orange, bg = p.bg },
    WarningMsg = { fg = p.orange },

    -- Misc UI
    NonText = { fg = p.gray, bold = true },
    EndOfBuffer = { link = "NonText" },
    SpecialKey = { fg = p.fg },
    Conceal = { link = "Ignore" },
    Directory = { fg = p.olive, bg = bg_dark },
    Title = { fg = p.orange, bold = true },
    QuickFixLine = { link = "Search" },
    Whitespace = { link = "NonText" },

    -- Special
    Todo = { fg = p.fg, bold = true, underline = true },
    Error = { fg = p.error_text, bg = p.rust },
    Ignore = { fg = p.duplicate, underline = true },

    -- Diff
    DiffAdd = { fg = p.bg, bg = p.green },
    DiffAdded = { fg = p.green, bg = p.dark },
    DiffChange = { fg = p.bg, bg = p.brown },
    DiffDelete = { fg = p.bg, bg = p.orange, bold = true },
    DiffRemoved = { fg = p.orange, bg = p.dark },
    DiffText = { fg = p.bg, bg = p.tan, bold = true },

    -- Spell
    SpellBad = { fg = p.brown, sp = p.fg, underline = true },
    SpellCap = { fg = p.green, sp = p.fg, underline = true },
    SpellLocal = { fg = p.rust, sp = p.fg, underline = true },
    SpellRare = { fg = p.orange, sp = p.fg, underline = true },

    -- Redraw debug
    RedrawDebugClear = { fg = p.bg, bg = p.tan },
    RedrawDebugComposed = { fg = p.bg, bg = p.olive },
    RedrawDebugNormal = { reverse = true },
    RedrawDebugRecompose = { fg = p.bg, bg = p.rust },

    -- User highlight groups (for statuslines)
    User1 = { fg = p.fg, bg = p.rust },
    User2 = { fg = p.fg, bg = p.gray },
    User3 = { fg = p.fg, bg = p.orange },
    User4 = { fg = p.fg, bg = p.bg },
    User5 = { fg = p.fg, bg = p.rust },
    User6 = { fg = p.fg, bg = p.tan },
    User7 = { fg = p.fg, bg = p.olive },
    User8 = { fg = p.fg, bg = p.orange },
    User9 = { fg = p.fg, bg = p.gray },
  }
end

return { get = get }
