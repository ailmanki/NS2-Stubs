---@meta RenderMaterial
--- Render.json

---@class RenderMaterial
RenderMaterial = {}

---@param fileName string
function RenderMaterial:SetMaterial(fileName) end

---@param name string
---@param value boolean
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value number
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value Vector
function RenderMaterial:SetParameter(name, value) end

---@param name string
---@param value Color
function RenderMaterial:SetParameter(name, value) end

---@return string
function RenderMaterial:GetMaterialFilename() end