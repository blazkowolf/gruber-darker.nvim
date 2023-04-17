# gruber-darker.nvim

_A modern Neovim port of a deftheme [adaptation][gruber-darker-theme] of an Emacs
[port][gruber-darker] of a BBEdit [colorscheme][gruber-dark]_

> **Note**
> This is a work in progress, but fairly stable

![image](https://user-images.githubusercontent.com/9439488/229402983-b27a2fc4-d938-4ed0-8f7f-7711f73aa985.png)

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
vim.cmd.colorscheme("gruber-darker")
```

## Configuration

### Defaults

```lua
{
  bold = true,
  invert = {
    signs = false,
    tabline = false,
    visual = false,
  },
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  undercurl = true,
  underline = true,
}
```

### With updated preferences

Change configuration options by calling `setup()`
prior to loading the colorscheme. Your preferences
will be merged with the defaults.

For example, with [Lazy](https://github.com/folke/lazy.nvim.git)...

```lua
{
  "blazkowolf/gruber-darker.nvim",
  opts = {
    bold = false,
    italic = {
      strings = false,
    },
  },
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
