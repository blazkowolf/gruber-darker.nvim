# gruber-darker.nvim

_A modern Neovim port of a deftheme [adaptation][gruber-darker-theme] of an Emacs
[port][gruber-darker] of a BBEdit [colorscheme][gruber-dark]_

**This is a work in progress**

## Installation

### Lazy (recommended)

```lua
{ "blazkowolf/gruber-darker.nvim" }
```

### Packer

```lua
use "blazkowolf/gruber-darker.nvim"
```

### Plug

```vim
Plug 'blazkowolf/gruber-darker.nvim'
```

Then, somewhere in your `init.lua`, set the colorscheme

```lua
vim.cmd.colorscheme("GruberDarker")
```

## Configuration

### Defaults

```lua
{
	bold = true,
	italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
	underline = true,
}
```

### With updated preferences

Change configuration options by calling `setup()`
prior to loading the colorscheme. Your preferences
will be merged with the defaults.

```lua
{
  "blazkowolf/gruber-darker.nvim",
  config = function()
    require("gruber-darker").setup({
      bold = false,
      italic = {
        strings = false,
      },
    })
  end
}
```

## Credits

These repositories were great knowledge sources and their
inspiration helped immensely with the development of this plugin.

- [rexim/gruber-darker-theme][gruber-darker-theme]
- [folke/tokyonight.nvim][tokyonight]
- [drsooch/gruber-darker-vim][gruber-darker-vim]

[gruber-darker-theme]: https://github.com/rexim/gruber-darker-theme
[gruber-darker]: https://jblevins.org/projects/emacs-color-themes/gruber-darker-theme.el.html
[gruber-dark]: http://daringfireball.net/projects/bbcolors/schemes/
[tokyonight]: https://github.com/folke/tokyonight.nvim
[gruber-darker-vim]: https://github.com/drsooch/gruber-darker-vim
