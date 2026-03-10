---@class MiasmaConfig
---@field transparent boolean Enable transparent backgrounds
---@field terminal_colors boolean Set terminal colors (0-15)

---@type MiasmaConfig
local defaults = {
  transparent = false,
  terminal_colors = true,
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

  for k, v in pairs(opts) do
    if defaults[k] ~= nil then
      M[k] = v
    end
  end
end

---Reset config to defaults
function M.reset()
  for k, v in pairs(defaults) do
    M[k] = v
  end
end

return M
