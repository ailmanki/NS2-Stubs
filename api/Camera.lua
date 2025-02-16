---@meta Camera
--- Shared.json

---@class Camera
---@overload fun(): Camera
Camera = {}

---@param coords Coords
---@return void
function Camera:SetCoords(coords) end

---@return Coords
function Camera:GetCoords() end

---@param fov number
---@return void
function Camera:SetFov(fov) end

---@return number
function Camera:GetFov() end

---@param _dummy2 Camera.Type
---@return void
function Camera:SetType(_dummy2) end

---@return Camera.Type
function Camera:GetType() end