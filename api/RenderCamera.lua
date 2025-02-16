---@meta RenderCamera
--- Render.json

---@class RenderCamera
RenderCamera = {}

---@param coords Coords
function RenderCamera:SetCoords(coords) end

---@return Coords
function RenderCamera:GetCoords() end

---@param renderMask number
function RenderCamera:SetRenderMask(renderMask) end

---@param fov number
function RenderCamera:SetFov(fov) end

---@return number
function RenderCamera:GetFov() end

---@param nearPlane number
function RenderCamera:SetNearPlane(nearPlane) end

---@return number
function RenderCamera:GetNearPlane() end

---@param farPlane number
function RenderCamera:SetFarPlane(farPlane) end

---@return number
function RenderCamera:GetFarPlane() end

---@param visible boolean
function RenderCamera:SetIsVisible(visible) end

---@param usesTAA boolean
function RenderCamera:SetUsesTAA(usesTAA) end

---@return boolean
function RenderCamera:GetUsesTAA() end

---@param cullingMode RenderCamera.CullingMode
function RenderCamera:SetCullingMode(cullingMode) end

---@return RenderCamera.CullingMode
function RenderCamera:GetCullingMode() end

---@param type RenderCamera.Type
function RenderCamera:SetType(type) end

---@param renderSetupFile string
function RenderCamera:SetRenderSetup(renderSetupFile) end

---@param targetName string
function RenderCamera:SetTargetTexture(targetName) end

---@param targetName string
---@param hdr boolean
function RenderCamera:SetTargetTexture(targetName, hdr) end

---@param targetName string
---@param hdr boolean
---@param xSize number
---@param ySize number
function RenderCamera:SetTargetTexture(targetName, hdr, xSize, ySize) end