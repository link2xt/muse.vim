# Vim Muse

[![Build Status](https://travis-ci.com/link2xt/vim-muse.svg?branch=master)](https://travis-ci.com/link2xt/vim-muse)

[Vim](https://www.vim.org/) support for [Amusewiki](https://amusewiki.org/) and [Emacs Muse](https://www.gnu.org/software/emacs-muse/) markup.

## Installation

Recommended installation method is [vim-plug](https://github.com/junegunn/vim-plug).

Add the following line to your Vim configuration:
```vim
Plug 'link2xt/vim-muse'
```

Then run
```vim
:PlugInstall
```
to install vim-muse.

Other plugin managers, such as [Vundle](https://github.com/gmarik/vundle), should work too.

## Folding

Section folding is supported.

Set the following option to enable it:
```vim
set foldmethod=syntax
```
