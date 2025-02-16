---@meta Math
--- Math.json

---@param x number
---@param min number
---@param max number
---@return number
function Math.Wrap(x, min, max) end

---@param x number
---@param min number
---@param max number
---@return number
function Math.Clamp(x, min, max) end

---@param x number
---@return number
function Math.Noise(x) end

---@param x number
---@return number
function Math.Radians(x) end

---@param x number
---@return number
function Math.Degrees(x) end

---@param x number
---@return number
function Math.GetIsFinite(x) end

---@param x Vector
---@param y Vector
---@return Vector
function Math.CrossProduct(x, y) end

---@param x Vector
---@param y Vector
---@return number
function Math.DotProduct(x, y) end

Math.infinity = 1/0