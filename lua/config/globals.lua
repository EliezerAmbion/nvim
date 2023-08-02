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
    border = r.love,    -- rose | pine
    fgDark = r.overlay, -- base | surface | overlay
  }
  return config
end

return G
