---@meta RenderDecal
--- Render.json

---@class RenderDecal
RenderDecal = {}

---@param materialFileName string
function RenderDecal:SetMaterial(materialFileName) end

---@param material RenderMaterial
function RenderDecal:SetMaterial(material) end

---@param coords Coords
function RenderDecal:SetCoords(coords) end

---@return Coords
function RenderDecal:GetCoords() end

---@param renderMask number
function RenderDecal:SetRenderMask(renderMask) end

---@return number
function RenderDecal:GetRenderMask() end

---@param extents Vector
function RenderDecal:SetExtents(extents) end