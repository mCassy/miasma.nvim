--     ┏┏┓ o ┳━┓ ┓━┓ ┏┏┓ ┳━┓
--     ┃┃┃ ┃ ┃━┫ ┗━┓ ┃┃┃ ┃━┫
--     ┛ ┇ ┇ ┛ ┇ ━━┛ ┛ ┇ ┛ ┇
-- a fog descends upon your editor
-- https://github.com/xero/miasma.nvim

---@class MiasmaPalette
---@field none string
---@field bg string
---@field dark string
---@field darker string
---@field darkest string
---@field fg string
---@field gray string
---@field green string
---@field olive string
---@field brown string
---@field orange string
---@field tan string
---@field rust string
---@field cream string
---@field error_text string
---@field lsp_ref_special string
---@field lsp_sig_active string
---@field ibl_indent string
---@field ibl_scope string
---@field staged_add string
---@field staged_change string
---@field staged_delete string
---@field visible string
---@field duplicate string
---@field duplicate_visible string

---@type MiasmaPalette
local palette = {
  none = "NONE",

  -- backgrounds
  bg = "#222222",
  dark = "#1c1c1c",
  darker = "#111111",
  darkest = "#101010",

  -- foreground
  fg = "#d7c483",
  cream = "#d7c483",

  -- grays
  gray = "#666666",
  visible = "#888888",
  duplicate = "#444444",
  duplicate_visible = "#555555",

  -- main colors
  green = "#5f875f",
  olive = "#78824b",
  brown = "#685742",
  orange = "#b36d43",
  tan = "#c9a554",
  rust = "#bb7744",

  -- special colors
  error_text = "#c2c2b0",
  lsp_ref_special = "#fd9720",
  lsp_sig_active = "#fbec9f",

  -- indent-blankline
  ibl_indent = "#242d1d",
  ibl_scope = "#43492a",

  -- staged git colors (dimmed)
  staged_add = "#4a6a4a",
  staged_change = "#524636",
  staged_delete = "#8a5535",
}

return palette
