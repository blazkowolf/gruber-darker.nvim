# gruber-darker.nvim

_A modern Neovim port of a deftheme [adaptation][gruber-darker-theme] of an Emacs
[port][gruber-darker] of a BBEdit [colorscheme][gruber-dark]_

**This is a work in progress**

## Installation

### Lazy

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

Then, somewhere in your `init.lua`, set the colorscheme like this

```lua
vim.cmd.colorscheme("GruberDarker")
```

## Configuration

Configuration options can be changed by calling `setup()`
with your preferences prior to loading the colorscheme.

```lua
-- Config defaults
require("gruber-darker").setup({
  bold = true,
  italic = true,
  underline = true,
  comment_italics = true,
})
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
