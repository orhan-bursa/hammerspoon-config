-- Define the Hyper key (Cmd + Ctrl + Alt + Shift)
local hyper = {"cmd", "ctrl", "alt", "shift"}

-- Define the app bindings
local appShortcuts = {
  ["1"] = "Zed",
  ["2"] = "Google Chrome",
  ["3"] = "Slack",
  ["4"] = "Claude",
  ["5"] = "iTerm",
  ["6"] = "Figma",
  ["7"] = "Notion"
}

-- Bind each shortcut
for key, appName in pairs(appShortcuts) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(appName)
  end)
end

-- Reload Hammerspoon config after changes
