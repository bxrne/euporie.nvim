# euporie.nvim

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/bxrne/euporie.nvim/lint-test.yml?branch=main&style=for-the-badge)
![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

Edit Jupyter notebooks in Neovim by embedding the euporie TUI.

## Installation

### Requirements

- Neovim >= 0.8.0
- [euporie](https://euporie.readthedocs.io/en/latest/) installed (see [installation docs](https://euporie.readthedocs.io/en/latest/installation.html))

### Plugin

Using [packer](https://github.com/wbthomason/packer.nvim):

```lua
use 'bxrne/euporie.nvim'
```

Using [lazy](https://github.com/folke/lazy.nvim):

```lua
{ 'bxrne/euporie.nvim' }
```

## Usage

Open a Jupyter notebook with:

```
:Notebook
```

This opens euporie-notebook in a Neovim terminal buffer, sets the buffer name to "euporie (buffer number)", and enters insert mode.

## Configuration

```lua
require('euporie').setup({
  path = "."  -- Directory to open the notebook session in
})
```

## Features

- Terminal integration for euporie TUI
- Automatic buffer naming
- Seamless insert mode entry
