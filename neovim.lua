return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#050A2D",
        dark_bg = "#040816",
        darker_bg = "#02040C",
        lighter_bg = "#0E285B",

        fg = "#AAC5DD",
        dark_fg = "#234E73",
        light_fg = "#86CEE8",
        bright_fg = "#E4F2FC",
        muted = "#245D9A",

        red = "#F1758A",
        yellow = "#E8C47F",
        orange = "#EF9766",
        green = "#63D1A7",
        cyan = "#3FD4E8",
        blue = "#4995DD",
        magenta = "#C678DD",
        brown = "#70604C",

        bright_red = "#FF91A0",
        bright_yellow = "#F5D99E",
        bright_green = "#8FE8C4",
        bright_cyan = "#6FE4F2",
        bright_blue = "#6FB4F2",
        bright_magenta = "#DA9AF0",

        accent = "#4995DD",
        cursor = "#E4F2FC",
        foreground = "#AAC5DD",
        background = "#050A2D",
        selection = "#0E285B",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}