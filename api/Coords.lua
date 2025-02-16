---@meta Coords
--- Coords.json

---@class Coords
---@field origin Vector
---@field xAxis Vector
---@field yAxis Vector
---@field zAxis Vector
---@overload fun(Coords?: Coords): Coords
Coords = {}

--- Returns the inverse of the transformation represented by the coords.
---@return Coords
function Coords:GetInverse() end

--- Transforms the passed in point through this Coords.
---@param p Vector
---@return Vector
function Coords:TransformPoint(p) end

--- Transforms a Vector through this Coords. Returns true if all members are finite. This is useful for error checking.
---@return boolean
function Coords:GetIsFinite() end

--- Scales the axes of the coordinate frame by the value.
---@param scale number
---@return void
function Coords:Scale(scale) end


--- Returns a Coords object translated based on the passed in offset.
---@param offset Vector
---@return Coords
function Coords.GetTranslation(offset) end

--- Returns a Coords object rotated based on the passed in axis and angle (radians).
---@param axis Vector
---@param angle number
---@return Coords
function Coords.GetRotation(axis, angle) end

--- Returns a identity Coords object.
---@return Coords
function Coords.GetIdentity() end

--- Returns a Coords object at this origin that is angled based on the two vectors passed in. This coords is "looking" in this direction.
---@param origin Vector
---@param direction Vector
---@param up Vector
---@return Coords
function Coords.GetLookIn(origin, direction, up) end

--- Returns a Coords object at this origin that is angled based on the direction vector passed in.
---@param origin Vector
---@param direction Vector
---@return Coords
function Coords.GetLookIn(origin, direction) end

--- Returns a Coords object at this origin that is "looking" at the target origin passed in based on the passed in up Vector.
---@param origin Vector
---@param target Vector
---@param up Vector
---@return Coords
function Coords.GetLookAt(origin, target, up) end

--- Returns an orthonormal coordiante frame around the specified y-axis.
---@param yAxis Vector
---@return Coords
function Coords.GetOrthonormal(yAxis) end
