---@meta RenderFogMeshVolume
--- Render.json

---@class RenderFogMeshVolume
RenderFogMeshVolume = {}

---@param color Color
function RenderFogMeshVolume:SetColor(color) end

---@return Color
function RenderFogMeshVolume:GetColor() end

---@param density number
function RenderFogMeshVolume:SetDensity(density) end

---@return number
function RenderFogMeshVolume:GetDensity() end

---@param renderMask number
function RenderFogMeshVolume:SetRenderMask(renderMask) end

---@return number
function RenderFogMeshVolume:GetRenderMask() end

---@param priority number
function RenderFogMeshVolume:SetSortPriority(priority) end

---@return number
function RenderFogMeshVolume:GetSortPriority() end

---@param coords Coords
function RenderFogMeshVolume:SetGradientTransform(coords) end

---@return Coords
function RenderFogMeshVolume:GetGradientTransform() end

---@param falloff number
function RenderFogMeshVolume:SetGradientFalloff(falloff) end

---@return number
function RenderFogMeshVolume:GetGradientFalloff() end

--- Sets the mesh used to render the fog volume.  This is quite expensive, shouldn't be done frequently.
---@param table table
function RenderFogMeshVolume:SetMesh(table) end