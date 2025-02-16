---@meta Trace

---@class Trace
---@field fraction float
---@field entity string
---@overload fun(): Trace
Trace = {}

---@param className string
---@return boolean
function Trace:isa(className) end

---@return void
function Trace:Clear() end
