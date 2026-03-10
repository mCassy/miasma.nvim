-- lualine theme for miasma.nvim

local colors = {
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

local transparent = vim.g.miasma_transparent == 1

local bg_base = transparent and "NONE" or colors.dark
local bg_inactive = transparent and "NONE" or colors.bg

return {
  normal = {
    a = { bg = colors.olive, fg = colors.dark, gui = "bold" },
    b = { bg = colors.brown, fg = colors.cream },
    c = { bg = bg_base, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.green, fg = colors.dark, gui = "bold" },
    b = { bg = colors.brown, fg = colors.cream },
    c = { bg = bg_base, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.tan, fg = colors.dark, gui = "bold" },
    b = { bg = colors.brown, fg = colors.cream },
    c = { bg = bg_base, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.orange, fg = colors.dark, gui = "bold" },
    b = { bg = colors.brown, fg = colors.cream },
    c = { bg = bg_base, fg = colors.fg },
  },
  command = {
    a = { bg = colors.green, fg = colors.dark, gui = "bold" },
    b = { bg = colors.brown, fg = colors.cream },
    c = { bg = bg_base, fg = colors.fg },
  },
  inactive = {
    a = { bg = bg_inactive, fg = colors.gray, gui = "bold" },
    b = { bg = bg_inactive, fg = colors.gray },
    c = { bg = bg_inactive, fg = colors.gray },
  },
}
