# miasma.nvim

Fork of [xero/miasma.nvim](https://github.com/xero/miasma.nvim) with added transparency support and extended plugin integrations.

A color scheme for `{neo,}vim` inspired by the woods.

![theme preview](https://raw.githubusercontent.com/mCassy/miasma.nvim/main/preview.png)

## Supported Plugins

- [blink.cmp](https://github.com/Saghen/blink.cmp) - Completion menu and documentation
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer tabs with diagnostics
- [flash.nvim](https://github.com/folke/flash.nvim) - Navigation and search labels
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git signs, blame, and staged indicators
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indent guides
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager UI
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Statusline theme
- [mason.nvim](https://github.com/williamboman/mason.nvim) - Package manager UI
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer with git status
- [noice.nvim](https://github.com/folke/noice.nvim) - Command line popup
- [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) - Scrollbar with diagnostics
- [snacks.nvim](https://github.com/folke/snacks.nvim) - Dashboard, notifier, picker, and more
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [trouble.nvim](https://github.com/folke/trouble.nvim) - Diagnostics list
- [which-key.nvim](https://github.com/folke/which-key.nvim) - Keybinding popup

Also includes support for:

- LSP diagnostics (signs, virtual text, floating windows)
- Treesitter syntax highlighting
- Native vim syntax groups

```
┏┏┓o┳━┓┓━┓┏┏┓┳━┓
┃┃┃┃┃━┫┗━┓┃┃┃┃━┫
┛ ┇┇┛ ┇━━┛┛ ┇┛ ┇
```

a fog descends upon your editor
https://github.com/xero/miasma.nvim

## Installation

Using `lazy.nvim`:

```lua
{
  "xero/miasma.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme miasma")
  end,
}
```

Using `lazy.nvim` with options:

```lua
{
  "xero/miasma.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("miasma").setup({
      transparent = true,      -- Enable transparent backgrounds
      terminal_colors = true,  -- Set terminal colors (default: true)
    })
    vim.cmd("colorscheme miasma")
  end,
}
```

Using `vim-plug`:

```vim
Plug 'xero/miasma.nvim'
colorscheme miasma
```

Using `packer`:

```lua
use {"xero/miasma.nvim"}
vim.cmd("colorscheme miasma")
```

## Usage

Set the color scheme with the builtin command:

```vim
:colorscheme miasma
```

### Configuration

Configure the theme using the setup function (Neovim 0.8+):

```lua
require("miasma").setup({
  transparent = false,     -- Enable transparent backgrounds
  terminal_colors = true,  -- Set terminal colors (0-15)
  overrides = {},          -- Highlight group overrides
})
```

Legacy configuration via global variables is still supported:

```lua
vim.g.miasma_transparent = 1  -- Enable transparency
```

```vim
let g:miasma_transparent = 1
```

### Highlight Group Overrides

You can override any highlight group using the `overrides` option. Overrides are **merged** with the default highlight definitions, so you only need to specify the attributes you want to change:

```lua
require("miasma").setup({
  overrides = {
    -- Add italic to comments (merges with existing fg color)
    Comment = { italic = true },

    -- Change function color
    Function = { fg = "#8fb573" },

    -- Completely restyle a group
    Keyword = { fg = "#d7c484", bold = true },

    -- Override plugin highlights
    TelescopeBorder = { fg = "#5f875f" },

    -- Link groups
    ["@variable"] = { link = "Identifier" },
  },
})
vim.cmd("colorscheme miasma")
```

### Accessing the Color Palette

You can access the color palette for use in your own configurations:

```lua
local palette = require("miasma.palette")

-- Use colors in your config
vim.api.nvim_set_hl(0, "MyCustomGroup", { fg = palette.green, bg = palette.dark })

-- Available colors:
-- palette.bg        (#222222) - Main background
-- palette.dark      (#1c1c1c) - Darker background
-- palette.fg        (#d7c483) - Foreground/cream
-- palette.gray      (#666666) - Comments, inactive
-- palette.green     (#5f875f) - Keywords, hints
-- palette.olive     (#78824b) - Functions, types
-- palette.brown     (#685742) - Strings, warnings
-- palette.orange    (#b36d43) - Errors, titles
-- palette.tan       (#c9a554) - Special elements
-- palette.rust      (#bb7744) - Constants
```

### Lualine

The theme includes a lualine theme that automatically uses the miasma colors:

```lua
require("lualine").setup({
  options = {
    theme = "miasma",
  },
})
```

## Project Structure

```
lua/
├── lualine/themes/miasma.lua  -- Lualine statusline theme
└── miasma/
    ├── init.lua               -- Main entry point
    ├── config.lua             -- Configuration options
    ├── palette.lua            -- Color definitions
    └── groups/
        ├── editor.lua         -- Core editor highlights
        ├── syntax.lua         -- Syntax highlighting
        ├── treesitter.lua     -- Treesitter captures
        ├── lsp.lua            -- LSP & diagnostics
        └── plugins.lua        -- Plugin integrations
colors/
├── miasma.lua                 -- Lua colorscheme (Neovim 0.8+)
└── miasma.vim                 -- VimScript fallback
```

## Extras

This theme has been ported to a few different apps, and are included in the `extras` directory:

- `miasma.theme` - colors for [btop](https://github.com/aristocratos/btop) (copy to `~/.config/btop/themes/`)
- `miasma.Xresources` - colors for [xclients](https://wiki.archlinux.org/title/x_resources) (e.g. unix terminal emulators)
- `miasma.itermcolors` - colors for [iterm2](https://iterm2.com)
- `miasma.fish` - colors for [fish](https://fishshell.com/)
- `miasma.zsh` - colors for [zsh](https://zsh.org)
- `miasma.yml` - colors for [alacritty](https://alacritty.org) (yml format)
- `miasma.toml` - colors for [alacritty](https://alacritty.org) (toml format)
- `miasma.colorscheme` - colors for [qterminal](https://github.com/lxqt/qterminal)
- `miasma.ghostty` - colors for [ghostty](https://ghostty.org/)

More on the way, and PRs for others are welcomed!

## License

![kopimi logo](https://gist.githubusercontent.com/xero/cbcd5c38b695004c848b73e5c1c0c779/raw/6b32899b0af238b17383d7a878a69a076139e72d/kopimi-sm.png)

All files and scripts in this repo are released [CC0](https://creativecommons.org/publicdomain/zero/1.0/) / [kopimi](https://kopimi.com)! In the spirit of _freedom of information_, I encourage you to fork, modify, change, share, or do whatever you like with this project! `^c^v`
