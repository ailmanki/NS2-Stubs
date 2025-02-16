---@meta RenderWetMapVolume
--- Render.json

---@class RenderWetMapVolume
RenderWetMapVolume = {}

--- Sets the mesh used to render the wetmap volume.  This is quite expensive, shouldn't be done frequently.
---@param table table
function RenderWetMapVolume:SetMesh(table) end

---@param wetness number
function RenderWetMapVolume:SetWetness(wetness) end

---@return number
function RenderWetMapVolume:GetWetness() end

---@param renderMask number
function RenderWetMapVolume:SetRenderMask(renderMask) end

---@return number
function RenderWetMapVolume:GetRenderMask() end