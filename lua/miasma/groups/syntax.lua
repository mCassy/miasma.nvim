local palette = require("miasma.palette")
local config = require("miasma.config")

---Get syntax highlight groups
---@return table<string, vim.api.keyset.highlight>
local function get()
  local p = palette
  local styles = config.styles

  return {
    -- Standard syntax groups
    Comment = { fg = p.gray, italic = styles.comments.italic },
    Constant = { fg = p.rust },
    String = { fg = p.brown },
    Character = { link = "Constant" },
    Number = { fg = p.olive },
    Boolean = { fg = p.olive },
    Float = { link = "Number" },

    Identifier = { fg = p.fg },
    Function = { fg = p.olive },

    Statement = { fg = p.green, bold = true, italic = styles.keywords.italic },
    Conditional = { link = "Statement" },
    Repeat = { link = "Statement" },
    Label = { link = "Statement" },
    Operator = { link = "Delimiter" },
    Keyword = { fg = p.green, italic = styles.keywords.italic },
    Exception = { link = "Statement" },

    PreProc = { link = "Keyword" },
    Include = { link = "PreProc" },
    Define = { link = "PreProc" },
    Macro = { link = "PreProc" },
    PreCondit = { link = "PreProc" },

    Type = { fg = p.olive, bold = true },
    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },

    Special = { fg = p.rust },
    SpecialChar = { link = "Special" },
    Tag = { link = "Special" },
    Delimiter = { fg = p.fg },
    SpecialComment = { link = "Special" },
    Debug = { link = "Special" },

    Underlined = { fg = p.olive, underline = true },

    -- Netrw
    netrwClassify = { fg = p.gray, bold = true },
    netrwExe = { fg = p.brown },

    -- HTML
    htmlTag = { fg = p.green },
    htmlEndTag = { link = "htmlTag" },
    htmlTagName = { fg = p.green },
    htmlArg = { fg = p.green },
    htmlLink = { link = "Underlined" },
    htmlBold = { bold = true },
    htmlItalic = { italic = styles.markup.italic },
    htmlUnderline = { underline = true },
    htmlBoldItalic = { bold = true, italic = styles.markup.italic },
    htmlBoldUnderline = { bold = true, underline = true },
    htmlUnderlineItalic = { underline = true, italic = styles.markup.italic },
    htmlBoldUnderlineItalic = { bold = true, underline = true, italic = styles.markup.italic },
    htmlH1 = { bold = true },

    -- Markdown
    markdownBold = { bold = true },
    markdownItalic = { italic = styles.markup.italic },
    markdownCodeBlock = { link = "String" },
    markdownCodeDelimiter = { link = "NonText" },
    markdownHeadingRule = { link = "NonText" },
    markdownLinkDelimiter = { link = "Delimiter" },
    markdownURLDelimiter = { link = "Delimiter" },

    -- XML
    xmlTag = { fg = p.olive },
    xmlEndTag = { link = "xmlTag" },
    xmlTagName = { fg = p.olive },
    xmlAttrib = { link = "xmlTag" },
    xmlEqual = { link = "xmlTag" },
    xmlString = { link = "xmlTagName" },

    -- Git commit
    gitCommitBranch = { fg = p.orange },
    gitCommitSelectedFile = { fg = p.green },
    gitCommitSelectedType = { fg = p.green },
    gitCommitUnmergedFile = { fg = p.brown },
    gitCommitUnmergedType = { fg = p.brown },
    gitCommitDiscardedFile = { link = "gitCommitUnmergedFile" },
    gitCommitDiscardedType = { link = "gitCommitUnmergedType" },
    gitCommitUntrackedFile = { link = "gitCommitUnmergedFile" },
    gitCommitFile = { link = "Directory" },

    -- PHP
    phpIdentifier = { fg = p.orange },
    phpSpecialFunction = { fg = p.rust },
    phpDefine = { link = "Statement" },
    phpHereDoc = { link = "String" },
    phpVarSelector = { link = "phpIdentifier" },

    -- Ruby
    rubyConstant = { link = "Constant" },
    rubyDefine = { link = "Statement" },
    rubyInstanceVariable = { link = "Number" },
    rubyLocalVariableOrMethod = { link = "Identifier" },

    -- Shell
    shDerefSimple = { fg = p.orange },
    shDerefVar = { link = "shDerefSimple" },

    -- Less/CSS
    lessVariable = { fg = p.orange },
    lessVariableValue = { link = "Normal" },

    -- JavaScript
    javaScript = { link = "Normal" },
    javaScriptBraces = { link = "Delimiter" },

    -- Vim script
    vimContinue = { link = "Delimiter" },
    vimHiAttrib = { link = "Constant" },
    vimSetSep = { link = "Delimiter" },

    -- Mustache
    mustacheMarker = { fg = p.rust },
    mustachePartial = { fg = p.rust },
    mustacheSection = { bold = true },
    mustacheVariable = { fg = p.tan },
    mustacheVariableUnescape = { fg = p.brown },

    -- Help
    helpExample = { link = "String" },
    helpHeadline = { link = "Title" },
    helpHyperTextEntry = { link = "Statement" },
    helpHyperTextJump = { link = "Underlined" },
    helpSectionDelim = { link = "Comment" },
    helpURL = { link = "Underlined" },

    -- Syntastic (legacy)
    SyntasticErrorSign = { fg = p.orange },
    SyntasticWarningSign = { fg = p.brown },
  }
end

return { get = get }
