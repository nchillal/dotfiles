# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## Setup on a New Machine

```bash
# Install chezmoi and apply dotfiles in one command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply rajuchillale
```

Or manually:

```bash
brew install chezmoi
chezmoi init https://github.com/rajuchillale/dotfiles.git
chezmoi apply
```

This will:
- Install Homebrew (if not present)
- Install all packages from Brewfile
- Apply all dotfiles to your home directory

## Managing Dotfiles

```bash
# Add a new dotfile
chezmoi add ~/.gitconfig

# Edit a managed file
chezmoi edit ~/.zshrc

# See what would change
chezmoi diff

# Apply changes
chezmoi apply

# Update from repository
chezmoi update
```

## Syncing Changes

```bash
# Enter the source directory
chezmoi cd

# Commit and push changes
git add .
git commit -m "Update dotfiles"
git push

# Exit back to home
exit
```

## What's Included

- `.zshrc` - Shell configuration
- `.vimrc` - Vim configuration
- `.config/starship.toml` - Starship prompt configuration
- `Brewfile` - Homebrew packages and VS Code extensions
