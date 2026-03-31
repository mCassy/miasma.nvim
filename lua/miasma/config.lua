---@class MiasmaStyleConfig
---@field italic boolean Enable italic for this category

---@class MiasmaStyles
---@field comments MiasmaStyleConfig Style for comments (default: { italic = true })
---@field keywords MiasmaStyleConfig Style for keywords and statements (default: { italic = false })
---@field variables MiasmaStyleConfig Style for variables, parameters, and properties (default: { italic = true })
---@field modifiers MiasmaStyleConfig Style for LSP semantic token modifiers (default: { italic = true })
---@field markup MiasmaStyleConfig Style for markup emphasis and html/markdown italic (default: { italic = true })
---@field plugins MiasmaStyleConfig Style for plugin-specific groups like git blame (default: { italic = true })

---@class MiasmaConfig
---@field transparent boolean Enable transparent backgrounds
---@field terminal_colors boolean Set terminal colors (0-15)
---@field italics? boolean Legacy option: set false to disable all italics (overrides styles)
---@field styles MiasmaStyles Per-category style controls
---@field overrides table<string, vim.api.keyset.highlight> Highlight group overrides

---@type MiasmaConfig
local defaults = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    variables = { italic = true },
    modifiers = { italic = true },
    markup = { italic = true },
    plugins = { italic = true },
  },
  overrides = {},
}

---@type MiasmaConfig
local M = vim.deepcopy(defaults)

---Setup miasma colorscheme options
---@param opts? MiasmaConfig
function M.setup(opts)
  opts = opts or {}

  -- Support legacy vim.g.miasma_transparent
  if opts.transparent == nil and vim.g.miasma_transparent == 1 then
    opts.transparent = true
  end

  -- Handle legacy `italics` boolean as a kill switch
  if opts.italics == false then
    opts.styles = opts.styles or {}
    for category, _ in pairs(defaults.styles) do
      if opts.styles[category] == nil then
        opts.styles[category] = { italic = false }
      end
    end
  end

  for k, v in pairs(opts) do
    if k == "styles" then
      M.styles = vim.tbl_deep_extend("force", M.styles, v)
    elseif k == "italics" then
      -- Already handled above, skip
    elseif defaults[k] ~= nil then
      M[k] = v
    end
  end

  -- Always copy overrides if provided
  if opts.overrides then
    M.overrides = opts.overrides
  end
end

---Reset config to defaults
function M.reset()
  for k, v in pairs(defaults) do
    M[k] = vim.deepcopy(v)
  end
end

return M
