# Omarchy Ocean Night

A deep-navy / ocean-blue theme for [Omarchy](https://omarchy.org), built from a
set of midnight-blue abstract wallpapers.

## Install

```bash
omarchy theme install https://github.com/hembramnishant50-glitch/omarchy-ocean-night-theme.git
omarchy theme set "Ocean Night"
```

Theme name: `ocean-night`

## What's included

- **Colors** (`colors.toml`) — deep navy (`#050A2D`) with ocean-blue accent (`#4995DD`)
- **Terminals** — alacritty, foot, ghostty, kitty (beam cursor with blink + cursor-trail "writing" animation)
- **Editor themes** — Helix, Vim, Emacs, Sublime Text, Zed, Cursor/VS Code/VSCodium
- **Apps** — btop, chromium, firefox (see `firefox/userChrome.css`), obsidian, neovim, pi, t3code
- **Shell/Hyprland** — full-UI rounded corners (`decoration:rounding = 16`), workspace/focus-switch animations
- **Backgrounds** — 5 numbered wallpapers in `backgrounds/`

> Note: when installed from a repo, Omarchy regenerates `*.lua`, the terminal
> configs, and `vscode.json` from `colors.toml` (they run code). The curated
> copies shipped here are preserved for local use and as the source of truth.