---@meta HeightMap
--- HeightMap.json

---@class HeightMap
HeightMap = {}

---@return HeightMap
function HeightMap.new() end

--- Loads a height map from a height map file.
---@param fileName string
---@return boolean
function HeightMap:Load(fileName) end

--- Returns the elevation at a sample point.
---@param x number
---@param z number
---@return number
function HeightMap:GetElevation(x, z) end

--- Converts normalized coordinate representing height map to world coordinates.
---@param normY number
---@return number
function HeightMap:GetWorldX(normY) end

--- Converts normalized coordinate representing height map to world coordinates.
---@param normX number
---@return number
function HeightMap:GetWorldZ(normX) end

--- Returns the map-space coordinate for the world space coordinate.
---@param worldZ number
---@return number
function HeightMap:GetMapX(worldZ) end

--- Returns the map-space coordinate for the world space coordinate.
---@param worldX number
---@return number
function HeightMap:GetMapY(worldX) end

--- Use map extents to keep x within bounds.
---@param x number
---@return number
function HeightMap:ClampXToMapBounds(x) end

--- Use map extents to keep z within bounds.
---@param z number
---@return number
function HeightMap:ClampZToMapBounds(z) end

--- Return aspect ratio of playable area within map.
---@return number
function HeightMap:GetAspectRatio() end

--- How many world units to offset by to reach the center of the minimap space.
---@return Vector
function HeightMap:GetOffset() end

--- Returns the size of the minimap in world units.
---@return Vector
function HeightMap:GetExtents() end