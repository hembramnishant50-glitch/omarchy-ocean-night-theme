<p align="center">
  <img src="preview.png" alt="Ocean Night banner" width="720">
</p>

<h1 align="center">Ocean Night</h1>

<p align="center">
  <em>A deep-navy, ocean-blue theme for <a href="https://omarchy.org">Omarchy</a> —
  rounded every corner, a quiet motion for switching windows, and a cursor that writes.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/omarchy-theme-4995DD" alt="Omarchy theme">
  <img src="https://img.shields.io/badge/mode-dark-050A2D" alt="Dark mode">
  <img src="https://img.shields.io/badge/terminals-4-3FD4E8" alt="4 terminals">
</p>

---

Built from a set of midnight-blue abstract wallpapers, *Ocean Night* pulls the
whole desktop into one calm palette — the boot lock screen, the shell, the
editor, and the terminal all read as the same quiet stretch of water after
dark.

## Palette

| Role | Hex | Swatch |
| :--- | :--- | :--- |
| darker background | `#02040C` | ![#02040C](https://img.shields.io/badge/-%2302040C-%2302040C) |
| dark background | `#040816` | ![#040816](https://img.shields.io/badge/-%23040816-%23040816) |
| background | `#050A2D` | ![#050A2D](https://img.shields.io/badge/-%23050A2D-%23050A2D) |
| lighter / selection | `#0E285B` | ![#0E285B](https://img.shields.io/badge/-%230E285B-%230E285B) |
| muted | `#245D9A` | ![#245D9A](https://img.shields.io/badge/-%23245D9A-%23245D9A) |
| accent | `#4995DD` | ![#4995DD](https://img.shields.io/badge/-%234995DD-%234995DD) |
| foreground | `#AAC5DD` | ![#AAC5DD](https://img.shields.io/badge/-%23AAC5DD-%23AAC5DD) |
| light foreground | `#86CEE8` | ![#86CEE8](https://img.shields.io/badge/-%2386CEE8-%2386CEE8) |
| bright foreground | `#E4F2FC` | ![#E4F2FC](https://img.shields.io/badge/-%23E4F2FC-%23E4F2FC) |

| Syntax | Hex | Swatch |
| :--- | :--- | :--- |
| cyan | `#3FD4E8` | ![#3FD4E8](https://img.shields.io/badge/-%233FD4E8-%233FD4E8) |
| green | `#63D1A7` | ![#63D1A7](https://img.shields.io/badge/-%2363D1A7-%2363D1A7) |
| yellow | `#E8C47F` | ![#E8C47F](https://img.shields.io/badge/-%23E8C47F-%23E8C47F) |
| orange | `#EF9766` | ![#EF9766](https://img.shields.io/badge/-%23EF9766-%23EF9766) |
| red | `#F1758A` | ![#F1758A](https://img.shields.io/badge/-%23F1758A-%23F1758A) |
| magenta | `#C678DD` | ![#C678DD](https://img.shields.io/badge/-%23C678DD-%23C678DD) |
| brown | `#70604C` | ![#70604C](https://img.shields.io/badge/-%2370604C-%2370604C) |

A brighter terminal set (`bright_red` `#FF91A0`, `bright_yellow` `#F5D99E`,
`bright_green` `#8FE8C4`, `bright_cyan` `#6FE4F2`, `bright_blue` `#6FB4F2`,
`bright_magenta` `#DA9AF0`) is included for shell prompts and PS1 segments.

## Install

```bash
omarchy theme install https://github.com/hembramnishant50-glitch/omarchy-ocean-night-theme.git
omarchy theme set "Ocean Night"
```

Verify with `omarchy theme current` — it should report **Ocean Night**.

Cycle the bundled wallpapers any time with `omarchy theme bg next`.

## What you get

- **Full-screen corners** — every shell surface (bar, launcher, menus,
  notifications, lock screen) follows `decoration:rounding = 16`, so the whole
  desktop shares one radius instead of a mixed bag.
- **Quiet motion** — workspace switches slide (`slidefade 20%`), focused windows
  fade in; both on the same easy-out curve as the rest of the system.
- **A cursor that writes** — kitty uses a beam cursor with a gentle blink and a
  `cursor_trail` so text feels *typed*, one line of characters chasing the caret.
- **Editor themes** — Helix, Vim, Emacs, Sublime Text, Zed, and the
  VS Code / Cursor / VSCodium family all get an Ocean Night skin.
- **App configs** — btop, chromium, firefox (`firefox/userChrome.css`), obsidian,
  neovim, pi, t3code, and the shell itself.
- **Five wallpapers** — a numbered set in `backgrounds/`, cycled with the theme.

## Wallpapers

| | | |
| :--- | :--- | :--- |
| ![01](backgrounds/01-abstract-blue-wave.jpg) | ![02](backgrounds/02-blue-geometric.jpg) | ![03](backgrounds/03-blue-aesthetic.jpg) |
| *abstract blue wave* | *blue geometric* | *blue aesthetic* |
| ![04](backgrounds/04-moonlit-boat-sea.jpg) | ![05](backgrounds/05-satisfactory-factory.jpg) |  |
| *moonlit boat at sea* | *satisfactory factory* | all five live in `backgrounds/` |

## Tune it

Corners and switch feel live in the theme's `hyprland.lua`, using Hyprland's
native `hl` API:

```lua
hl.config({ decoration = { rounding = 16 } })

hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 4.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 4.0, bezier = "easeOutQuint", style = "slidefade 20%" })
hl.animation({ leaf = "windows",     enabled = true, speed = 4.0 })
```

The writing caret is kitty's `cursor_trail`, tuned so a trail appears only after
the cursor lingers — no trails on redraw-heavy UIs:

```conf
cursor_shape beam
cursor_blink_interval 0.5
cursor_stop_blinking_after 5.0
cursor_trail 100
cursor_trail_decay 0.06 0.2
cursor_trail_start_threshold 1
cursor_trail_color #3FD4E8
```

> [!NOTE]
> Omarchy runs a cloned theme's `*.lua`, terminal configs, and `vscode.json`
> through its own templates, so those are regenerated from `colors.toml` on
> install. The hand-tuned copies shipped in this repo (rounding, animations,
> cursor trail, editor themes) remain as the source of truth — apply the
> snippets above on top of any installed copy to get the full look.

---

<p align="center">Made for <a href="https://omarchy.org">Omarchy</a> · Ocean Night</p>