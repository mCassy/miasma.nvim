local palette = require("miasma.palette")
local config = require("miasma.config")

---Get LSP and diagnostic highlight groups
---@return table<string, vim.api.keyset.highlight>
local function get()
  local p = palette
  local transparent = config.transparent
  local italic = config.styles.modifiers.italic

  local bg_dark = transparent and p.none or p.dark

  return {
    -- Diagnostics
    DiagnosticError = { fg = p.orange },
    DiagnosticWarn = { fg = p.brown },
    DiagnosticWarning = { fg = p.brown },
    DiagnosticInfo = { fg = p.green },
    DiagnosticHint = { fg = p.green },
    DiagnosticOk = { fg = p.olive },

    -- Diagnostic signs
    DiagnosticSignError = { fg = p.orange, bg = bg_dark },
    DiagnosticSignWarn = { fg = p.brown, bg = bg_dark },
    DiagnosticSignInfo = { fg = p.olive, bg = bg_dark },
    DiagnosticSignHint = { fg = p.green, bg = bg_dark },
    DiagnosticSignOk = { link = "DiagnosticOk" },

    -- Virtual text
    DiagnosticVirtualTextError = { fg = p.orange },
    DiagnosticVirtualTextWarn = { fg = p.brown, bg = transparent and p.none or p.bg },
    DiagnosticVirtualTextInfo = { fg = p.olive, bg = transparent and p.none or p.bg },
    DiagnosticVirtualTextHint = { fg = p.olive, bg = transparent and p.none or p.bg },
    DiagnosticVirtualTextOk = { link = "DiagnosticOk" },
    DiagnosticVirtualTextWarning = { fg = p.brown, bg = transparent and p.none or p.bg },

    -- Floating diagnostics
    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticFloatingOk = { link = "DiagnosticOk" },
    DiagnosticFloatingWarning = { link = "DiagnosticWarning" },
    DiagnosticErrorFloating = { link = "DiagnosticError" },
    DiagnosticHintFloating = { fg = p.olive },
    DiagnosticWarningFloating = { link = "DiagnosticWarn" },

    -- Underline diagnostics
    DiagnosticUnderlineError = { sp = p.orange, underline = true },
    DiagnosticUnderlineWarn = { sp = p.brown, underline = true },
    DiagnosticUnderlineInfo = { sp = p.olive, underline = true },
    DiagnosticUnderlineHint = { sp = p.green, underline = true },
    DiagnosticUnderlineOk = { sp = p.olive, underline = true },

    -- Special diagnostics
    DiagnosticUnnecessary = { fg = p.gray, underline = true },
    DiagnosticDeprecated = { sp = p.brown, strikethrough = true },

    -- LSP references
    LspReferenceText = { fg = p.fg, bg = p.ibl_scope, sp = p.lsp_ref_special, bold = true, underline = true },
    LspReferenceRead = { fg = p.green, bg = p.ibl_scope, sp = p.lsp_ref_special, bold = true, underline = true },
    LspReferenceWrite = { fg = p.orange, bg = p.ibl_scope, sp = p.lsp_ref_special, bold = true, underline = true },

    -- LSP UI
    LspBorderBG = { fg = p.brown, bg = transparent and p.none or p.bg },
    LspFloatWinNormal = { fg = p.fg, bg = p.ibl_scope },
    LspSignatureActiveParameter = { sp = p.lsp_sig_active, bold = true, italic = italic, underline = true },
    LspCodeLens = { link = "Comment" },
    LspInlayHint = { fg = p.gray, bg = transparent and p.none or p.dark },

    -- Neovim internal error
    NvimInternalError = { fg = p.dark, bg = p.orange },

    -- Nvim syntax (builtins)
    NvimArrow = { link = "Delimiter" },
    NvimColon = { link = "Delimiter" },
    NvimComma = { link = "Delimiter" },
    NvimFigureBrace = { link = "NvimInternalError" },
    NvimIdentifier = { link = "Identifier" },
    NvimInvalid = { link = "Error" },
    NvimInvalidSingleQuotedUnknownEscape = { link = "NvimInternalError" },
    NvimInvalidSpacing = { link = "ErrorMsg" },
    NvimNumber = { link = "Number" },
    NvimNumberPrefix = { link = "Type" },
    NvimOptionSigil = { link = "Type" },
    NvimParenthesis = { link = "Delimiter" },
    NvimSingleQuotedUnknownEscape = { link = "NvimInternalError" },
    NvimSpacing = { link = "Normal" },
    NvimString = { link = "String" },

    -- LSP semantic tokens (types)
    ["@lsp.type.class"] = { link = "Type" },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.decorator"] = { link = "Function" },
    ["@lsp.type.enum"] = { link = "Type" },
    ["@lsp.type.enumMember"] = { link = "Constant" },
    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.interface"] = { link = "Type" },
    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.macro"] = { link = "Macro" },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.namespace"] = { link = "Identifier" },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { link = "Identifier" },
    ["@lsp.type.property"] = { link = "Identifier" },
    ["@lsp.type.string"] = { link = "String" },
    ["@lsp.type.struct"] = { link = "Type" },
    ["@lsp.type.type"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { link = "Type" },
    ["@lsp.type.variable"] = { link = "Identifier" },

    -- LSP semantic token modifiers
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = { italic = italic },
    ["@lsp.mod.constant"] = { link = "Constant" },
    ["@lsp.mod.static"] = { italic = italic },
    ["@lsp.mod.async"] = { italic = italic },
    ["@lsp.mod.defaultLibrary"] = { link = "Special" },
    ["@lsp.mod.abstract"] = { italic = italic },
    ["@lsp.mod.virtual"] = { italic = italic },

    -- LSP semantic token type + modifier combinations
    ["@lsp.typemod.function.defaultLibrary"] = { link = "Special" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "Special" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "Special" },
    ["@lsp.typemod.variable.readonly"] = { fg = p.rust, italic = italic },
    ["@lsp.typemod.variable.constant"] = { link = "Constant" },
    ["@lsp.typemod.property.readonly"] = { fg = p.rust, italic = italic },
    ["@lsp.typemod.parameter.readonly"] = { italic = italic },
    ["@lsp.typemod.function.async"] = { fg = p.olive, italic = italic },
    ["@lsp.typemod.method.async"] = { fg = p.olive, italic = italic },
  }
end

return { get = get }
