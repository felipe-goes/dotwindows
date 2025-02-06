local wezterm = require("wezterm")

-- generate random number to choose random background
local background_index = math.random(7)
local background_array = {
  "C:/Users/ogoes/Pictures/Slides/ativo/nes.jpg",
  "C:/Users/ogoes/Pictures/Slides/ativo/ps2.png",
  "C:/Users/ogoes/Pictures/Slides/ativo/psp.jpg",
  "C:/Users/ogoes/Pictures/Slides/ativo/psx.png",
  "C:/Users/ogoes/Pictures/Slides/ativo/snesmsu1.jpg",
  "C:/Users/ogoes/Pictures/Slides/ativo/switch.jpg",
}

wezterm.on("gui-startup", function(cmd)
  local tab, on, window = wezterm.mux.spawn_window(cmd or {})
  -- window:gui_window():toggle_fullscreen()
  window:gui_window():maximize()
end)

local function font_with_fallback(name, params)
  local names = { name, "Apple Color Emoji", "azuki_font" }
  return wezterm.font_with_fallback(names, params)
end

local font_name = "JetBrainsMono Nerd Font"

-- see https://wezfurlong.org/wezterm/config/lua/wezterm/target_triple.html for values
-- local is_linux = wezterm.target_triple == "x86_64-unknown-linux-gnu"
local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"

local config = {
  default_domain = is_windows and "WSL:Ubuntu-22.04" or nil,
  default_prog = is_windows and { "wsl.exe" } or nil,

  -- OpenGL for GPU acceleration, Software for CPU
  front_end = "WebGpu",
  window_decorations = "RESIZE",

  -- Font config
  font = font_with_fallback(font_name),
  font_rules = {
    {
      italic = true,
      font = font_with_fallback(font_name, { italic = true }),
    },
    {
      italic = true,
      intensity = "Bold",
      font = font_with_fallback(font_name, { italic = true, bold = true }),
    },
    {
      intensity = "Bold",
      font = font_with_fallback(font_name, { bold = true }),
    },
  },
  audible_bell = "Disabled",
  warn_about_missing_glyphs = false,
  scrollback_lines = 40000,
  font_size = 16.5,
  line_height = 1.0,

  animation_fps = 30,

  -- Cursor style
  default_cursor_style = "BlinkingBlock",

  -- X11
  enable_wayland = false,

  -- Hyperlink
  hyperlink_rules = {
    -- This is actually the default if you don't specify any hyperlink_rules
    {
      regex = "\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b",
      format = "$0",
    },
    -- linkify email addresses
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
    -- Make task numbers clickable
    -- {regex = "\\b[tT](\\d+)\\b", format = "https://example.com/tasks/?t=$1" }

    -- Linkify things that look like URLs

    -- file:// URI
    {
      regex = "\\bfile://\\S*\\b",
      format = "$0",
    },
    -- nixpkgs review current program
    {
      regex = "nixpkgs-review pr (\\d+)",
      format = "https://github.com/NixOS/nixpkgs/pull/$1",
    },
    {
      regex = "pr-(\\d+)-?\\d?",
      format = "https://github.com/NixOS/nixpkgs/pull/$1",
    },
    -- nix flake github references
    {
      regex = "github:([\\w\\d_-]+)/([\\w\\d_\\.-]+)",
      format = "https://github.com/$1/$2",
    },
    -- nix flake github references with commit
    {
      regex = "github:([\\w\\d_-]+)/([\\w\\d_\\.-]+)/([\\d\\w-]+)",
      format = "https://github.com/$1/$2/commit/$3",
    },
    -- git ssh remote url
    {
      regex = "git@(\\w+\\.\\w+):(\\w+/\\w+)\\.git",
      format = "https://$1/$2",
    },
    -- go packages on github.com
    {
      regex = "github.com/([\\w_-]+)/([\\w_-]+)",
      format = "https://github.com/$1/$2",
    },
  },

  -- Keybinds
  disable_default_key_bindings = true,
  keys = {
    {
      key = [[\]],
      mods = "CTRL|ALT",
      action = wezterm.action({
        SplitHorizontal = { domain = "CurrentPaneDomain" },
      }),
    },
    {
      key = "F11",
      mods = "",
      action = wezterm.action.ToggleFullScreen,
    },
    {
      key = [[\]],
      mods = "CTRL",
      action = wezterm.action({
        SplitVertical = { domain = "CurrentPaneDomain" },
      }),
    },
    {
      key = "q",
      mods = "CTRL",
      action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
    },
    {
      key = "h",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Left" }),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Right" }),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Up" }),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Down" }),
    },
    {
      key = "h",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
    },
    { -- browser-like bindings for tabbing
      key = "t",
      mods = "CTRL",
      action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
    },
    {
      key = "w",
      mods = "CTRL",
      action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
    },
    {
      key = "Tab",
      mods = "CTRL",
      action = wezterm.action({ ActivateTabRelative = 1 }),
    },
    {
      key = "Tab",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivateTabRelative = -1 }),
    }, -- standard copy/paste bindings
    {
      key = "x",
      mods = "CTRL",
      action = "ActivateCopyMode",
    },
    {
      key = "v",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ PasteFrom = "Clipboard" }),
    },
    {
      key = "c",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
    },
    {
      key = "q",
      mods = "CTRL",
      action = "DisableDefaultAssignment",
    },
    {
      key = "t",
      mods = "CTRL",
      action = "DisableDefaultAssignment",
    },
  },

  bold_brightens_ansi_colors = true,
  color_scheme = 'tokyonight',
  window_background_image = background_array[background_index],
  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.01,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },

  -- Padding
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },

  -- Tab Bar
  enable_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = false,
  tab_bar_at_bottom = false,

  -- General
  automatically_reload_config = true,
  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
  window_background_opacity = 1.0,
  window_close_confirmation = "NeverPrompt",
  window_frame = { active_titlebar_bg = "#090909", font = font_with_fallback(font_name, { bold = true }) },
  launch_menu = is_windows and { { args = { "cmd.exe" }, domain = { DomainName = "local" } } } or nil,
  set_environment_variables = {
    TERMINFO_DIRS = "/home/" .. (os.getenv("USERNAME") or os.getenv("USER")) .. "/.nix-profile/share/terminfo",
    WSLENV = "TERMINFO_DIRS",
    prompt = is_windows and "$E]7;file://localhost/$P$E\\$E[32m$T$E[0m $E[35m$P$E[36m$_$G$E[0m " or nil,
  },
}

return config
