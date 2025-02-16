---@meta GUIView
---GUIView.json

---@class GUIView
GUIView = {}

--- Load a Lua script into this GUIView. This script determines what is rendered into the view.
---@param scriptFile string
function GUIView:Load(scriptFile) end

--- Set the name of the texture to render this GUIView into. The texture name should start with a * symbol.
---@param targetName string
function GUIView:SetTargetTexture(targetName) end

--- Sets a global variable in this GUIView with the passed in name to the passed in number value. The global should be used by the script.
---@param name string
---@param value number
function GUIView:SetGlobal(name, value) end

--- Sets a global variable in this GUIView with the passed in name to the passed in string value. The global should be used by the script.
---@param name string
---@param value string
function GUIView:SetGlobal(name, value) end

--- Sets a global variable in this GUIView with the passed in name to the passed in Color value.
---@param name string
---@param color Color
function GUIView:SetGlobal(name, color) end

--- Returns the time that the last device reset took place, which can be used to determine if this GUIView's texture contents still exist, or if they need to be redrawn.
---@return number
function GUIView:GetLastResetTime() end

--- Changes the render condition for the GUIView.  The render condition defaults to RenderAlways.  When RenderAlways, the GUIView will re-render itself to its texture every single frame.  When RenderOnce, the GUIView will render to its texture one time, then will set itself to RenderNever.  When RenderNever, the rendering is skipped, preserving the contents of the texture from a previous rendering -- if any.
---@param condition GUIView.RenderCondition
function GUIView:SetRenderCondition(condition) end

--- Returns the current render condition value of the GUIView.  Can be useful to determine if it has rendered a texture or not yet by seeing if it has changed from RenderOnce to RenderNever.
---@return GUIView.RenderCondition
function GUIView:GetRenderCondition() end

GUIView.RenderAlways = "GUIView.RenderAlways"
GUIView.RenderOnce = "GUIView.RenderOnce"
GUIView.RenderNever = "GUIView.RenderNever"
---@enum GUIView.RenderCondition
GUIView.RenderCondition = {
    RenderAlways = GUIView.RenderAlways,
    RenderOnce = GUIView.RenderOnce,
    RenderNever = GUIView.RenderNever
}