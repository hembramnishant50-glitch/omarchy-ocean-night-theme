local active_border_color = "#4995DD"
local inactive_border_color = "rgba(595959aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  -- Full UI rounded corners. decoration:rounding rounds every Hyprland
  -- window AND every Omarchy shell surface (bar, launchers, menus,
  -- notifications, tooltips, popups, lock screen): the shell reads
  -- Style.cornerRadius from `hyprctl getoption decoration:rounding`.
  decoration = {
    rounding = 16,
  },
})

-- Window switching / focus-change animations.
-- Re-enable and tune the leaves the Omarchy defaults leave off so window
-- focus switches and workspace switches animate smoothly.
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 4.0, bezier = "easeOutQuint" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.0, bezier = "easeOutQuint", style = "slidefade 20%" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.0, bezier = "easeOutQuint" })