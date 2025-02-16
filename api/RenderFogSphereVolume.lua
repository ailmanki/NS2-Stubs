---@meta RenderFogSphereVolume
--- Render.json

---@class RenderFogSphereVolume
RenderFogSphereVolume = {}

---@param color Color
function RenderFogSphereVolume:SetColor(color) end

---@return Color
function RenderFogSphereVolume:GetColor() end

---@param density number
function RenderFogSphereVolume:SetDensity(density) end

---@return number
function RenderFogSphereVolume:GetDensity() end

---@param renderMask number
function RenderFogSphereVolume:SetRenderMask(renderMask) end

---@return number
function RenderFogSphereVolume:GetRenderMask() end

---@param priority number
function RenderFogSphereVolume:SetSortPriority(priority) end

---@return number
function RenderFogSphereVolume:GetSortPriority() end

---@param origin Vector
function RenderFogSphereVolume:SetOrigin(origin) end

---@return Vector
function RenderFogSphereVolume:GetOrigin() end

---@param radius number
function RenderFogSphereVolume:SetRadius(radius) end

---@return number
function RenderFogSphereVolume:GetRadius() end

---@param softness number
function RenderFogSphereVolume:SetSoftness(softness) end

---@return number
function RenderFogSphereVolume:GetSoftness() end