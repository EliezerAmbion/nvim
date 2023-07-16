local G = {}

G.alpha = function()
  local config = {
    footer = 'Always pray'

  }
  return config
end

G.rosepine = function()
  local r = require('rose-pine.palette')
  local config = {
    fg = r.text,
    bg = r.foam,
    border = r.gold,
    fgDark = r.overlay
  }
  return config
end

G.test = function()
  local maximizer = require('maximizer')
  return maximizer
end

return G
