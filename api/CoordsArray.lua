---@meta CoordsArray
--- Shared.json

---@class CoordsArray
---@overload fun(): CoordsArray
CoordsArray = {}


---@return number
function CoordsArray:GetSize() end

---@param i number
---@return Coords
function CoordsArray:Get(i) end