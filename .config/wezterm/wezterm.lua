local wezterm = require "wezterm"
local config = wezterm.config_builder()

-- Font Settings
config.font_size = 19
config.line_height = 1.2
config.font = wezterm.font "Inconsolata Nerd Font Mono"

-- Colors
config.color_scheme = "Wombat"
-- config.color_scheme = "zenbones_dark"
-- config.color_scheme = "Quiet (Gogh)"
-- config.color_scheme = "Material Darker (base16)"

-- Appearence
config.initial_cols = 120
config.initial_rows = 60
config.window_decorations = "RESIZE" -- ?
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_image = os.getenv "HOME" .. "/.config/wezterm/assets/bg.png"

-- Others
config.audible_bell = "Disabled"

return config
