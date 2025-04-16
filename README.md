# 📝 Neovim Configuration

This directory contains my minimalist configuration for **[Neovim](https://neovim.io/)**, built for performance and productivity coding. Managed using [GNU Stow](https://www.gnu.org/software/stow/) as part of my dotfiles setup.

## 🛠 Requirements

Make sure the following tools are installed:

```bash
# Neovim (v0.9+ recommended)
sudo pacman -S neovim      # Arch
# or
sudo apt install neovim    # Debian/Ubuntu
```

For full functionality (like LSP, icons, etc.), also install:

- `ripgrep`
- `fd`
- `tree-sitter`
- `nerd-fonts` (e.g. 0xProto Nerd Font)

## 🚀 Installation

Clone the dotfiles repo:

```bash
git clone https://github.com/gilangarya01/nvim.git ~/dotfiles/nvim
cd ~/dotfiles
```

Use `stow` to create the necessary symlinks:

```bash
stow nvim
```

This will link your Neovim config to `~/.config/nvim/`.

## 🧩 Plugin Management

This config uses [`lazy.nvim`](https://github.com/folke/lazy.nvim) for managing plugins. On first launch, Neovim will automatically install it and sync all listed plugins.

To manually trigger plugin sync:

```bash
:Lazy sync
```

## 💡 Tips

- You can edit keybindings in `lua/config/keybindings.lua`
- Settings options in `lua/config/options.lua`
- Add your own plugins in `lua/plugins/`
