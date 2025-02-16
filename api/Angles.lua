---@meta Angles
--- Angles.json

---@class Angles
---@field yaw float
---@field pitch float
---@field roll float
---@overload fun(Angles?: Angles): Angles
---@overload fun(float: yaw, float: pitch, float: roll): Angles
Angles = {}

--- Extracts the Angles from the passed in Coords and stores them in this Angles object.
---@param coords Coords
---@return Angles
function Angles:BuildFromCoords(coords) end

--- Returns True if all members are finite, false otherwise.
---@return boolean
function Angles:GetIsFinite() end


---@return Coords
function Angles:GetCoords() end

--- Returns the interpolated angle. The linear interpolation between two Euler angles.
---@param a Angles The first angle.
---@param b Angles The second angle.
---@param fraction number The interpolation fraction (0-1).
---@return Angles
function Angles.Lerp(a, b, fraction) end
