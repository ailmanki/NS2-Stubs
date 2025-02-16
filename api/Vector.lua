---@meta Vector

---@class Vector
---@field x float
---@field y float
---@field z float
---@overload fun(float: x, float: y, float: z): Vector
---@overload fun(Vector?: Vector): Vector
Vector = {}

---@return Vector
function Vector:SafeNormal() end

---@param v Vector
---@return number
function Vector:Or(v) end
