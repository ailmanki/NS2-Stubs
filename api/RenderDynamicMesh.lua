---@meta RenderDynamicMesh
--- Render.json

---@class RenderDynamicMesh
RenderDynamicMesh = {}

---@param coords Coords
function RenderDynamicMesh:SetCoords(coords) end

---@return Coords
function RenderDynamicMesh:GetCoords() end

---@param material string
function RenderDynamicMesh:SetMaterial(material) end

---@param renderMask number
function RenderDynamicMesh:SetRenderMask(renderMask) end

---@return number
function RenderDynamicMesh:GetRenderMask() end

---@param groupName string
function RenderDynamicMesh:SetGroup(groupName) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetIndices(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetVertices(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetTexCoords(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetNormals(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetBinormals(table, numValues) end

---@param table table
---@param numValues number
function RenderDynamicMesh:SetColors(table, numValues) end

---@param visible boolean
function RenderDynamicMesh:SetIsVisible(visible) end

---@return boolean
function RenderDynamicMesh:GetIsVisible() end