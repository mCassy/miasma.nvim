"     ┏┏┓ o ┳━┓ ┓━┓ ┏┏┓ ┳━┓
"     ┃┃┃ ┃ ┃━┫ ┗━┓ ┃┃┃ ┃━┫
"     ┛ ┇ ┇ ┛ ┇ ━━┛ ┛ ┇ ┛ ┇
" a fog descends upon your editor
" https://github.com/xero/miasma.nvim

" This file provides backwards compatibility for Vim and older Neovim versions.
" For Neovim 0.8+, the Lua colorscheme (colors/miasma.lua) is used automatically.

if has('nvim-0.8')
  " Neovim 0.8+ will prefer miasma.lua, but if we got here, load via Lua
  lua require("miasma").load()
  finish
endif

" Legacy VimScript fallback for Vim and Neovim < 0.8
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="miasma"
let g:colors_name="miasma"

hi Normal guifg=#D7C483 guibg=#222222 guisp=NONE blend=NONE gui=NONE
hi LineNr guifg=#666666 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi VertSplit guifg=#1c1c1c guibg=#222222 guisp=NONE blend=NONE gui=NONE
hi Directory guifg=#78824b guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi StatusLine guifg=#d7c483 guibg=#222222 guisp=NONE blend=NONE gui=bold
hi StatusLineNC guifg=#666666 guibg=#222222 guisp=NONE blend=NONE gui=bold
hi Boolean guifg=#78834b guibg=NONE guisp=NONE blend=NONE gui=NONE
hi ColorColumn guifg=NONE guibg=#222222 guisp=NONE blend=NONE gui=NONE
hi Comment guifg=#666666 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Constant guifg=#bb7744 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi CursorColumn guifg=NONE guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi Cursor guifg=#222222 guibg=#685742 guisp=NONE blend=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi CursorLineNr guifg=#78824b guibg=#1c1c1c guisp=NONE blend=NONE gui=bold
hi Delimiter guifg=#d7c483 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticError guifg=#b36d43 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticHint guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticInfo guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticOk guifg=#78824b guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignError guifg=#b36d43 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignHint guifg=#5f875f guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignInfo guifg=#78824b guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiagnosticSignWarn guifg=#685742 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiagnosticWarn guifg=#685742 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi DiffAdd guifg=#222222 guibg=#5f875f guisp=NONE blend=NONE gui=NONE
hi DiffAdded guifg=#5f875f guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiffChange guifg=#222222 guibg=#685742 guisp=NONE blend=NONE gui=NONE
hi DiffDelete guifg=#222222 guibg=#b36d43 guisp=NONE blend=NONE gui=bold
hi DiffRemoved guifg=#b36d43 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi DiffText guifg=#222222 guibg=#c9a554 guisp=NONE blend=NONE gui=bold
hi Error guifg=#c2c2b0 guibg=#bb7744 guisp=NONE blend=NONE gui=NONE
hi ErrorMsg guifg=#b36d43 guibg=#222222 guisp=NONE blend=NONE gui=NONE
hi FoldColumn guifg=#666666 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi Folded guifg=#b36d43 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi Function guifg=#78834b guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Identifier guifg=#d7c483 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Ignore guifg=#444444 guibg=NONE guisp=NONE blend=NONE gui=underline
hi IncSearch guifg=#222222 guibg=#bb7744 guisp=NONE blend=NONE gui=NONE
hi Keyword guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=NONE
hi lCursor guifg=bg guibg=fg guisp=NONE blend=NONE gui=NONE
hi MatchParen guifg=#d7c483 guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
hi MoreMsg guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=bold
hi NonText guifg=#666666 guibg=NONE guisp=NONE blend=NONE gui=bold
hi Number guifg=#78824b guibg=NONE guisp=NONE blend=NONE gui=NONE
hi Pmenu guifg=#d7c483 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi PmenuSbar guifg=NONE guibg=#666666 guisp=NONE blend=NONE gui=NONE
hi PmenuSel guifg=#222222 guibg=#78834b guisp=NONE blend=NONE gui=NONE
hi PmenuThumb guifg=#d7c483 guibg=#d7c483 guisp=NONE blend=NONE gui=NONE
hi Question guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=bold
hi Search guifg=#222222 guibg=#5f875f guisp=NONE blend=NONE gui=NONE
hi SignColumn guifg=#666666 guibg=#1c1c1c guisp=NONE blend=NONE gui=NONE
hi Special guifg=#bb7744 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SpecialKey guifg=#d7c483 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi SpellBad guifg=#685742 guibg=NONE guisp=#d7c483 blend=NONE gui=underline
hi SpellCap guifg=#5f875f guibg=NONE guisp=#d7c483 blend=NONE gui=underline
hi SpellLocal guifg=#bb7744 guibg=NONE guisp=#d7c483 blend=NONE gui=underline
hi SpellRare guifg=#b36d43 guibg=NONE guisp=#d7c483 blend=NONE gui=underline
hi Statement guifg=#5f875f guibg=NONE guisp=NONE blend=NONE gui=bold
hi String guifg=#685742 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi TabLine guifg=#666666 guibg=#111111 guisp=NONE blend=NONE gui=NONE
hi TabLineFill guifg=#c9a554 guibg=#222222 guisp=NONE blend=NONE gui=NONE
hi TabLineSel guifg=#111111 guibg=#78834b guisp=NONE blend=NONE gui=bold
hi TermCursor guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=reverse
hi Title guifg=#b36d43 guibg=NONE guisp=NONE blend=NONE gui=bold
hi Todo guifg=#d7c483 guibg=NONE guisp=NONE blend=NONE gui=bold,underline
hi Type guifg=#78834b guibg=NONE guisp=NONE blend=NONE gui=bold
hi Underlined guifg=#78834b guibg=NONE guisp=NONE blend=NONE gui=underline
hi Visual guifg=#222222 guibg=#78824b guisp=NONE blend=NONE gui=NONE
hi WarningMsg guifg=#b36d43 guibg=NONE guisp=NONE blend=NONE gui=NONE
hi WildMenu guifg=black guibg=#c9a554 guisp=NONE blend=NONE gui=NONE
hi WinBar guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold

" Links
hi! link @boolean Boolean
hi! link Character Constant
hi! link @comment Comment
hi! link Conceal Ignore
hi! link Conditional Statement
hi! link @constant.builtin Special
hi! link @constant Constant
hi! link @constructor Special
hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Debug Special
hi! link Define PreProc
hi! link EndOfBuffer NonText
hi! link Exception Statement
hi! link @field Identifier
hi! link Float Number
hi! link FloatTitle Title
hi! link @function.builtin Special
hi! link @function Function
hi! link Include PreProc
hi! link @keyword Keyword
hi! link Label Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link LspCodeLens Comment
hi! link @lsp.type.comment Comment
hi! link @lsp.type.decorator Function
hi! link @lsp.type.enumMember Constant
hi! link @lsp.type.function Function
hi! link @lsp.type.method Function
hi! link @lsp.type.parameter Identifier
hi! link @lsp.type.property Identifier
hi! link @lsp.type.type Type
hi! link @lsp.type.variable Identifier
hi! link Macro PreProc
hi! link @method Function
hi! link MsgSeparator StatusLine
hi! link @namespace Identifier
hi! link NormalFloat Pmenu
hi! link @number Number
hi! link NvimIdentifier Identifier
hi! link NvimNumber Number
hi! link NvimString String
hi! link Operator Delimiter
hi! link @parameter Identifier
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PreCondit PreProc
hi! link PreProc Keyword
hi! link @preproc PreProc
hi! link @property Identifier
hi! link @punctuation Delimiter
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link @string String
hi! link Structure Type
hi! link Substitute Search
hi! link Tag Special
hi! link @text.diff.add DiffAdd
hi! link @text.diff.delete DiffDelete
hi! link @text.literal Comment
hi! link @text.reference Identifier
hi! link @text.title Title
hi! link @text.todo Todo
hi! link @text.underline Underlined
hi! link @text.uri Underlined
hi! link Typedef Type
hi! link @type Type
hi! link @variable Identifier
hi! link Whitespace NonText
hi! link WinBarNC WinBar
hi! link WinSeparator VertSplit

" Transparency support
if get(g:, "miasma_transparent", 0)
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE
  hi EndOfBuffer guibg=NONE
  hi NormalFloat guibg=NONE
  hi FloatBorder guibg=NONE
  hi FloatTitle guibg=NONE
  hi SignColumn guibg=NONE
  hi FoldColumn guibg=NONE
  hi LineNr guibg=NONE
  hi CursorLineNr guibg=NONE
  hi DiagnosticSignError guibg=NONE
  hi DiagnosticSignWarn guibg=NONE
  hi DiagnosticSignInfo guibg=NONE
  hi DiagnosticSignHint guibg=NONE
  hi StatusLine guibg=NONE
  hi StatusLineNC guibg=NONE
  hi WinBar guibg=NONE
  hi TabLine guibg=NONE
  hi TabLineFill guibg=NONE
  hi Pmenu guibg=NONE
  hi CursorLine guibg=NONE
  hi Directory guibg=NONE
endif
