---@meta VelocityArray
--- Shared.json

---@class VelocityArray
---@overload fun(): VelocityArray
VelocityArray = {}

---@return number
function VelocityArray:GetSize() end

---@param index number
---@return Vector
function VelocityArray:Get(index) end