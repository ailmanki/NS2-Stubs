---@meta RenderBillboard
--- Render.json

---@class RenderReflectionProbe
RenderReflectionProbe = {}

---@param bitmapBytes ByteArray
function RenderReflectionProbe:SetCubeMapRaw(bitmapBytes) end

---@param visible boolean
function RenderReflectionProbe:SetIsVisible(visible) end

---@return boolean
function RenderReflectionProbe:GetIsVisible() end

---@param origin Vector
function RenderReflectionProbe:SetOrigin(origin) end

---@return Vector
function RenderReflectionProbe:GetOrigin() end

---@param radius number
function RenderReflectionProbe:SetRadius(radius) end

---@param strength number
function RenderReflectionProbe:SetStrength(strength) end

---@param color Color
function RenderReflectionProbe:SetTint(color) end

---@return Color
function RenderReflectionProbe:GetTint() end

---@param groupName string
function RenderReflectionProbe:SetGroup(groupName) end

---@param renderMask number
function RenderReflectionProbe:SetRenderMask(renderMask) end

---@return number
function RenderReflectionProbe:GetRenderMask() end