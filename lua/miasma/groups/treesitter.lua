local palette = require("miasma.palette")
local config = require("miasma.config")

---Get treesitter highlight groups
---@return table<string, vim.api.keyset.highlight>
local function get()
  local p = palette
  local styles = config.styles

  return {
    -- Identifiers
    ["@variable"] = { fg = p.fg, italic = styles.variables.italic },
    ["@variable.builtin"] = { fg = p.rust, italic = styles.variables.italic },
    ["@variable.parameter"] = { fg = p.fg, italic = styles.variables.italic },
    ["@variable.member"] = { link = "Identifier" },

    -- Constants
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Constant" },

    -- Modules/Namespaces
    ["@module"] = { link = "Identifier" },
    ["@namespace"] = { link = "Identifier" },

    -- Strings
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "Comment" },
    ["@string.escape"] = { link = "Special" },
    ["@string.regex"] = { link = "Special" },
    ["@string.special"] = { link = "Special" },

    -- Characters
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    -- Booleans & Numbers
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    -- Types
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },
    ["@type.qualifier"] = { link = "Keyword" },

    -- Attributes/Annotations
    ["@attribute"] = { link = "Special" },

    -- Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },

    -- Constructors
    ["@constructor"] = { link = "Special" },

    -- Operators & Punctuation
    ["@operator"] = { link = "Operator" },
    ["@punctuation"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Special" },

    -- Keywords
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.operator"] = { link = "Keyword" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },

    -- Labels
    ["@label"] = { link = "Label" },

    -- Comments
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"] = { link = "DiagnosticError" },
    ["@comment.warning"] = { link = "DiagnosticWarn" },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { link = "DiagnosticHint" },

    -- Properties/Fields
    ["@property"] = { fg = p.fg, italic = styles.variables.italic },
    ["@field"] = { link = "Identifier" },
    ["@parameter"] = { fg = p.fg, italic = styles.variables.italic },

    -- Tags
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },

    -- Text/Markup
    ["@text"] = { link = "Normal" },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = styles.markup.italic },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { link = "Comment" },
    ["@text.uri"] = { link = "Underlined" },
    ["@text.reference"] = { link = "Identifier" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.diff.add"] = { link = "DiffAdd" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    -- Markup (new Neovim captures)
    ["@markup"] = { link = "Normal" },
    ["@markup.strong"] = { bold = true },
    ["@markup.emphasis"] = { italic = styles.markup.italic },
    ["@markup.underline"] = { underline = true },
    ["@markup.strike"] = { strikethrough = true },
    ["@markup.heading"] = { link = "Title" },
    ["@markup.raw"] = { link = "Comment" },
    ["@markup.link"] = { link = "Underlined" },
    ["@markup.link.label"] = { link = "Identifier" },
    ["@markup.link.url"] = { link = "Underlined" },
    ["@markup.list"] = { link = "Delimiter" },
    ["@markup.math"] = { link = "Special" },

    -- Diff
    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    -- Preproc
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },

    -- Errors
    ["@error"] = { link = "Error" },

    -- None (for disabling)
    ["@none"] = {},
  }
end

return { get = get }
