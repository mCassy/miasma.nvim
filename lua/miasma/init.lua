--     ┏┏┓ o ┳━┓ ┓━┓ ┏┏┓ ┳━┓
--     ┃┃┃ ┃ ┃━┫ ┗━┓ ┃┃┃ ┃━┫
--     ┛ ┇ ┇ ┛ ┇ ━━┛ ┛ ┇ ┛ ┇
-- a fog descends upon your editor
-- https://github.com/xero/miasma.nvim

local M = {}

---@type MiasmaConfig
M.config = require("miasma.config")

---Setup miasma colorscheme
---@param opts? MiasmaConfig
function M.setup(opts)
  M.config.setup(opts)
end

---Load the colorscheme
function M.load()
  -- Reset highlights
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "miasma"

  local config = require("miasma.config")
  local palette = require("miasma.palette")

  -- Set terminal colors
  if config.terminal_colors then
    M.set_terminal_colors(palette)
  end

  -- Load highlight groups
  local groups = {}

  -- Collect all highlight groups
  for _, source in ipairs({
    "miasma.groups.editor",
    "miasma.groups.syntax",
    "miasma.groups.treesitter",
    "miasma.groups.lsp",
    "miasma.groups.plugins",
  }) do
    local ok, module = pcall(require, source)
    if ok and module.get then
      for name, hl in pairs(module.get()) do
        groups[name] = hl
      end
    end
  end

  -- Apply all highlight groups
  for name, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

---Set terminal colors (0-15)
---@param p MiasmaPalette
function M.set_terminal_colors(p)
  -- Dark colors (0-7)
  vim.g.terminal_color_0 = p.bg       -- black
  vim.g.terminal_color_1 = p.orange   -- red
  vim.g.terminal_color_2 = p.green    -- green
  vim.g.terminal_color_3 = p.brown    -- yellow
  vim.g.terminal_color_4 = p.olive    -- blue
  vim.g.terminal_color_5 = p.rust     -- magenta
  vim.g.terminal_color_6 = p.tan      -- cyan
  vim.g.terminal_color_7 = p.fg       -- white

  -- Bright colors (8-15)
  vim.g.terminal_color_8 = p.gray     -- bright black
  vim.g.terminal_color_9 = p.orange   -- bright red
  vim.g.terminal_color_10 = p.green   -- bright green
  vim.g.terminal_color_11 = p.tan     -- bright yellow
  vim.g.terminal_color_12 = p.olive   -- bright blue
  vim.g.terminal_color_13 = p.rust    -- bright magenta
  vim.g.terminal_color_14 = p.tan     -- bright cyan
  vim.g.terminal_color_15 = p.cream   -- bright white
end

return M
