-- lualine theme for miasma.nvim

local ok, palette = pcall(require, "miasma.palette")
if not ok then
  -- Fallback colors if miasma module is not loaded yet
  palette = {
    bg = "#222222",
    fg = "#d7c483",
    dark = "#1c1c1c",
    gray = "#666666",
    green = "#5f875f",
    olive = "#78824b",
    brown = "#685742",
    orange = "#b36d43",
    tan = "#c9a554",
    cream = "#d7c483",
  }
end

local config_ok, config = pcall(require, "miasma.config")
local transparent = config_ok and config.transparent or vim.g.miasma_transparent == 1

local bg_base = transparent and "NONE" or palette.dark
local bg_inactive = transparent and "NONE" or palette.bg

return {
  normal = {
    a = { bg = palette.olive, fg = palette.dark, gui = "bold" },
    b = { bg = palette.brown, fg = palette.cream },
    c = { bg = bg_base, fg = palette.fg },
  },
  insert = {
    a = { bg = palette.green, fg = palette.dark, gui = "bold" },
    b = { bg = palette.brown, fg = palette.cream },
    c = { bg = bg_base, fg = palette.fg },
  },
  visual = {
    a = { bg = palette.tan, fg = palette.dark, gui = "bold" },
    b = { bg = palette.brown, fg = palette.cream },
    c = { bg = bg_base, fg = palette.fg },
  },
  replace = {
    a = { bg = palette.orange, fg = palette.dark, gui = "bold" },
    b = { bg = palette.brown, fg = palette.cream },
    c = { bg = bg_base, fg = palette.fg },
  },
  command = {
    a = { bg = palette.green, fg = palette.dark, gui = "bold" },
    b = { bg = palette.brown, fg = palette.cream },
    c = { bg = bg_base, fg = palette.fg },
  },
  inactive = {
    a = { bg = bg_inactive, fg = palette.gray, gui = "bold" },
    b = { bg = bg_inactive, fg = palette.gray },
    c = { bg = bg_inactive, fg = palette.gray },
  },
}
