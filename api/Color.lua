---@meta Color

---@class Color
---@field r float
---@field g float
---@field b float
---@field a float
---@overload fun(Color?: Color): Color
---@overload fun(float: r, float: g, float: b, float: a): Color
Color = {}

---@param rgba number
---@return Color
function ColorFromPacked(rgba) end