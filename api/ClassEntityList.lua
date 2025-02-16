---@meta ClassEntityList

---@class ClassEntityList
---@overload fun(): ClassEntityList
ClassEntityList = {}

---@return number
function ClassEntityList:GetSize() end

---@param index number
---@return Entity
function ClassEntityList:GetEntityAtIndex(index) end