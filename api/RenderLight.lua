---@meta RenderLight
--- Render.json

---@class RenderLight
RenderLight = {}

---@param visible boolean
function RenderLight:SetIsVisible(visible) end

---@return boolean
function RenderLight:GetIsVisible() end

---@param coords Coords
function RenderLight:SetCoords(coords) end

---@return Coords
function RenderLight:GetCoords() end

---@param type RenderLight.Type
function RenderLight:SetType(type) end

---@return RenderLight.Type
function RenderLight:GetType() end

---@param castsShadows boolean
function RenderLight:SetCastsShadows(castsShadows) end

---@return boolean
function RenderLight:GetCastsShadows() end

---@param shadowFadeRate number
function RenderLight:SetShadowFadeRate(shadowFadeRate) end

---@return number
function RenderLight:GetShadowFadeRate() end

---@param color Color
function RenderLight:SetColor(color) end

---@return Color
function RenderLight:GetColor() end

---@param radius number
function RenderLight:SetRadius(radius) end

---@return number
function RenderLight:GetRadius() end

---@param intensity number
function RenderLight:SetIntensity(intensity) end

---@return number
function RenderLight:GetIntensity() end

---@param innerCone number
function RenderLight:SetInnerCone(innerCone) end

---@return number
function RenderLight:GetInnerCone() end

---@param outerCone number
function RenderLight:SetOuterCone(outerCone) end

---@return number
function RenderLight:GetOuterCone() end

---@param renderMask number
function RenderLight:SetRenderMask(renderMask) end

---@return number
function RenderLight:GetRenderMask() end

---@param _dummy2 RenderLight.Direction
---@param color Color
function RenderLight:SetDirectionalColor(_dummy2, color) end

---@param atmosphericDensity number
function RenderLight:SetAtmosphericDensity(atmosphericDensity) end

---@return number
function RenderLight:GetAtmosphericDensity() end

---@param specular boolean
function RenderLight:SetSpecular(specular) end

---@return boolean
function RenderLight:GetSpecular() end

---@param fileName string
function RenderLight:SetGoboTexture(fileName) end

---@param groupName string
function RenderLight:SetGroup(groupName) end

RenderLight.Type_Spot = "RenderLight.Type_Spot"
RenderLight.Type_Point = "RenderLight.Type_Point"
RenderLight.Type_Ambient = "RenderLight.Type_Ambient"
RenderLight.Type_AmbientVolume = "RenderLight.Type_AmbientVolume"

---@enum RenderLight.Type
RenderLight.Type = {
    Type_Spot = RenderLight.Type_Spot,
    Type_Point = RenderLight.Type_Point,
    Type_Ambient = RenderLight.Type_Ambient,
    Type_AmbientVolume = RenderLight.Type_AmbientVolume
}

RenderLight.Direction_Right = "RenderLight.Direction_Right"
RenderLight.Direction_Left = "RenderLight.Direction_Left"
RenderLight.Direction_Up = "RenderLight.Direction_Up"
RenderLight.Direction_Down = "RenderLight.Direction_Down"
RenderLight.Direction_Forward = "RenderLight.Direction_Forward"
RenderLight.Direction_Backward = "RenderLight.Direction_Backward"

---@enum RenderLight.Direction
RenderLight.Direction = {
    Direction_Right = RenderLight.Direction_Right,
    Direction_Left = RenderLight.Direction_Left,
    Direction_Up = RenderLight.Direction_Up,
    Direction_Down = RenderLight.Direction_Down,
    Direction_Forward = RenderLight.Direction_Forward,
    Direction_Backward = RenderLight.Direction_Backward
}