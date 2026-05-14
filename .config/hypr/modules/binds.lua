local M = {
  "apps",
  "audio",
  "brightness",
  "logout",
  "media",
  "misc",
  "windows",
  "workspaces",
}

for i = 1, #M do
  require("modules.binds." .. M[i])
end
