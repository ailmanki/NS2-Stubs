---@meta RenderBillboard
--- Render.json

---@class RenderBillboard
RenderBillboard = {}

---@param visible boolean
function RenderBillboard:SetIsVisible(visible) end

---@return boolean
function RenderBillboard:GetIsVisible() end

---@param origin Vector
function RenderBillboard:SetOrigin(origin) end

---@param color Color
function RenderBillboard:SetColor(color) end

---@param materialFileName string
function RenderBillboard:SetMaterial(materialFileName) end

---@param material RenderMaterial
function RenderBillboard:SetMaterial(material) end

---@param size Vector
function RenderBillboard:SetSize(size) end

---@param groupName string
function RenderBillboard:SetGroup(groupName) end