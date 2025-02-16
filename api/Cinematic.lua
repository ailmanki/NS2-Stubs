---@meta Cinematic
--- Cinematic.json

---@class Cinematic
Cinematic = {}

--- Returns the Camera being used to view the scene at the current time.
---@return Camera
function Cinematic:GetCamera() end

--- Sets the mode which is used to determine what happens when the cinematic reaches its end. Cinematic.Repeat_None, Cinematic.Repeat_Loop, or Cinematic.Repeat_Endless.
---@param repeatStyle Cinematic.RepeatStyle
function Cinematic:SetRepeatStyle(repeatStyle) end

--- Sets the cinematic file that is being played in the instance.
---@param fileName string
function Cinematic:SetCinematic(fileName) end

--- Sets the cinematic file that is being played in the instance. Additionally, the renderMask option will also apply this value to all objects (include levels & its objects), to a specific render mask. This should be paired with a RenderCamera with the same Render Mask value to render this cinematic.
---@param fileName string
---@param renderMask number
function Cinematic:SetCinematic(fileName, renderMask) end

--- Sets the object to world space transformation applied to the cinematic.
---@param coords Coords
function Cinematic:SetCoords(coords) end

--- Sets whether or not the cinematic instance is visible.
---@param visible boolean
function Cinematic:SetIsVisible(visible) end

--- Returns whether or not the cinematic instance is visible.
---@return boolean
function Cinematic:GetIsVisible() end

--- Returns whether or not this cinematic was created with the Ignore Last Frame cull flag set.
---@return boolean
function Cinematic:GetLastRenderFrameCulling() end

--- Cinematic objects will be activated or deactivated. Each object uses active differently. An emitter will stop emitting particles for example.
---@param active boolean
function Cinematic:SetIsActive(active) end

--- Returns true if the cinematic objects are currently active.
---@return boolean
function Cinematic:GetIsActive() end

--- Sets the entity that the cinematic is parented to (if any).
---@param entity Entity
function Cinematic:SetParent(entity) end

--- Sets the index of the attachment point on the parent where the cinematic is attached.
---@param attachPoint number
function Cinematic:SetAttachPoint(attachPoint) end


Cinematic.Repeat_None = 1
Cinematic.Repeat_Loop = 2
Cinematic.Repeat_Endless = 3

---@enum Cinematic.RepeatStyle
Cinematic.RepeatStyle = {
    Cinematic.Repeat_None,
    Cinematic.Repeat_Loop,
    Cinematic.Repeat_Endless,
}
