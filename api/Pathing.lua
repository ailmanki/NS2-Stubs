---@meta Pathing
--- Pathing.json

---@class Pathing
Pathing = {}

---@param points PointArray
---@param b1Pos number
---@param pt Vector
function Pathing.InsertPoint(points, b1Pos, pt) end

---@return boolean
function Pathing.GetLevelHasPathingMesh() end

---@param position Vector
---@param radius number
---@param height number
---@return number
function Pathing.AddObstacle(position, radius, height) end

---@param inId number
function Pathing.RemoveObstacle(inId) end

function Pathing.BuildMesh() end

---@param modelName string
---@param coords Coords
---@param isWalkable boolean
function Pathing.CreatePathingObject(modelName, coords, isWalkable) end

---@param startLocation Vector
---@param endLocation Vector
---@param pointsOut PointArray
---@return boolean
function Pathing.GetPathPoints(startLocation, endLocation, pointsOut) end

---@param startLocation Vector
---@param endLocation Vector
---@return boolean
function Pathing.IsBlocked(startLocation, endLocation) end

---@param options table
function Pathing.SetOptions(options) end

---@param origin Vector
---@return Vector
function Pathing.GetClosestPoint(origin) end

---@param origin Vector
---@param extents Vector
---@param flags number
function Pathing.SetPolyFlags(origin, extents, flags) end

---@param origin Vector
---@param extents Vector
---@param flags number
function Pathing.ClearPolyFlags(origin, extents, flags) end

---@param origin Vector
---@param extents Vector
---@param flags number
---@return boolean
function Pathing.GetIsFlagSet(origin, extents, flags) end

---@param origin Vector
function Pathing.FloodFill(origin) end

---@param origin Vector
function Pathing.AddFillPoint(origin) end

---@return number
function Pathing.GetNumObstacles() end

---@param center Vector
---@param radius number
---@param height number
---@return Vector
function Pathing.FindRandomPointAroundCircle(center, radius, height) end

Pathing.Option_CellSize = "Pathing.Option_CellSize"
Pathing.Option_CellHeight = "Pathing.Option_CellHeight"
Pathing.Option_AgentHeight = "Pathing.Option_AgentHeight"
Pathing.Option_AgentRadius = "Pathing.Option_AgentRadius"
Pathing.Option_AgentMaxClimb = "Pathing.Option_AgentMaxClimb"
Pathing.Option_AgentMaxSlope = "Pathing.Option_AgentMaxSlope"
Pathing.Option_RegionMinSize = "Pathing.Option_RegionMinSize"
Pathing.Option_RegionMergeSize = "Pathing.Option_RegionMergeSize"
Pathing.Option_EdgeMaxLen = "Pathing.Option_EdgeMaxLen"
Pathing.Option_EdgeMaxError = "Pathing.Option_EdgeMaxError"
Pathing.Option_VertsPerPoly = "Pathing.Option_VertsPerPoly"
Pathing.Option_DetailSampleDist = "Pathing.Option_DetailSampleDist"
Pathing.Option_DetailSampleMaxError = "Pathing.Option_DetailSampleMaxError"
Pathing.Option_TileSize = "Pathing.Option_TileSize"
Pathing.Option_Count = "Pathing.Option_Count"
---@enum Pathing.Option
Pathing.Option = {
    Option_CellSize = Pathing.Option_CellSize,
    Option_CellHeight = Pathing.Option_CellHeight,
    Option_AgentHeight = Pathing.Option_AgentHeight,
    Option_AgentRadius = Pathing.Option_AgentRadius,
    Option_AgentMaxClimb = Pathing.Option_AgentMaxClimb,
    Option_AgentMaxSlope = Pathing.Option_AgentMaxSlope,
    Option_RegionMinSize = Pathing.Option_RegionMinSize,
    Option_RegionMergeSize = Pathing.Option_RegionMergeSize,
    Option_EdgeMaxLen = Pathing.Option_EdgeMaxLen,
    Option_EdgeMaxError = Pathing.Option_EdgeMaxError,
    Option_VertsPerPoly = Pathing.Option_VertsPerPoly,
    Option_DetailSampleDist = Pathing.Option_DetailSampleDist,
    Option_DetailSampleMaxError = Pathing.Option_DetailSampleMaxError,
    Option_TileSize = Pathing.Option_TileSize,
    Option_Count = Pathing.Option_Count
}

Pathing.PolyFlag_Walk = "Pathing.PolyFlag_Walk"
Pathing.PolyFlag_Swim = "Pathing.PolyFlag_Swim"
Pathing.PolyFlag_Door = "Pathing.PolyFlag_Door"
Pathing.PolyFlag_Jump = "Pathing.PolyFlag_Jump"
Pathing.PolyFlag_Closed = "Pathing.PolyFlag_Closed"
Pathing.PolyFlag_NoBuild = "Pathing.PolyFlag_NoBuild"
Pathing.PolyFlag_All = "Pathing.PolyFlag_All"
---@enum Pathing.Flags
Pathing.Flags = {
    PolyFlag_Walk = Pathing.PolyFlag_Walk,
    PolyFlag_Swim = Pathing.PolyFlag_Swim,
    PolyFlag_Door = Pathing.PolyFlag_Door,
    PolyFlag_Jump = Pathing.PolyFlag_Jump,
    PolyFlag_Closed = Pathing.PolyFlag_Closed,
    PolyFlag_NoBuild = Pathing.PolyFlag_NoBuild,
    PolyFlag_All = Pathing.PolyFlag_All
}