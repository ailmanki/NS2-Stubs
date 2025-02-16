---@meta GUIItem
---GUI.json

---@class GUIItem
GUIItem = {}

--- Pass in true to set this GUIItem as visible. All GUIItems are visible by default.
---@param setVisible boolean
function GUIItem:SetIsVisible(setVisible) end

--- Returns true if this GUIItem is visible.
---@return boolean
function GUIItem:GetIsVisible() end

--- Sets the position on the screen to render this GUIItem. This position is relative to it's parent. The default parent is the screen. This position is also relative to the anchor point defined for this GUIItem. The z component of the passed in Vector is ignored.
---@param position Vector
function GUIItem:SetPosition(position) end

--- Returns the position of this GUIItem.
---@return Vector
function GUIItem:GetPosition() end

--- Sets the rectangle within which this gui item is rendered.  Any part of the gui item outside this cropping rectangle is invisible.  By default, this behavior is disabled.  Coordinates are relative to the upper-left corner of the GUIItem, in pixels.  MinCorner is the upper-left corner of the crop zone, and MaxCorner is the lower-right corner of the crop zone.  If the area of this rectangle is non-positive, the item and all of its children are not rendered.  If the item is resized, the crop corners may need to be adjusted since they will not change size automatically.  For automatically scaling crop zone, see the "Normalized" variant of this method.  Note that the units are _before_ scaling is applied, so if only scaling is changing, then it _will_ appear to resize with the item.
---@param minCorner Vector
---@param maxCorner Vector
function GUIItem:SetCropRectangle(minCorner, maxCorner) end

--- Sets the rectangle within which this gui item and all of its children are rendered inside.  Any part of this gui item or its children outside of this rectangle is invisible.  Coordinates are normalized (0 -> 1), and relative to the upper-left corner of the GUIItem.  If the area of this rectangle is non-positive, the item and all of its children are not rendered.  Normalized coordinates also have the side effect of automatically scaling with the GUIItem.  If this is not desired, see the non "Normalized" variant of this method.
---@param minCorner Vector
---@param maxCorner Vector
function GUIItem:SetCropRectangleNormalized(minCorner, maxCorner) end

---@param minCorner Vector
function GUIItem:SetCropMinCornerNormalized(minCorner) end

---@param maxCorner Vector
function GUIItem:SetCropMaxCornerNormalized(maxCorner) end

--- Disables cropping rectangle for this GUIItem.
function GUIItem:ClearCropRectangle() end

--- Returns the cropping rectangle this GUIItem is set to (regardless of whether or not it is actually enabled).  The units returned are in (un-scaled) pixels.
---@return Vector
function GUIItem:GetCropRectangle() end

--- Returns the cropping rectangle this GUIItem is set to (regardless of whether or not it is actually enabled).  The units returned are in normalized coordinates.
---@return Vector
function GUIItem:GetCropRectangleNormalized() end

---@return Vector
function GUIItem:GetCropMinCornerNormalized() end
---@return Vector
function GUIItem:GetCropMaxCornerNormalized() end


--- Ordinarily, the size of the GUIItem (which can be retrieved via GetSize()) defaults to 1,1 and is only updated to the actual size of the text (in pixels) during rendering.  This is too late if GetSize() is used after the GUIItem is created, but before the first time it is rendered.  Calling this method forces it to update immediately.  Not too expensive, but not cheap either -- should be called only when necessary.
function GUIItem:ForceUpdateTextSize() end

--- Sets whether or not text rendering should snap to whole pixels or not.  False by default.  This is useful for ensuring fonts aren't blurred due to sub-pixel positioning, but at the same time also causes font movement to appear less smooth.
---@param state boolean
function GUIItem:SetSnapsToPixels(state) end

---@return boolean
function GUIItem:GetSnapsToPixels() end

--- Sets whether or not itemr rendering should align to whole pixels or not. False by default. This is useful for preventing edge artifacts due to sub-pixel positioning.
---@param state boolean
function GUIItem:SetAlignsToPixels(state) end

---@return boolean
function GUIItem:GetAlignsToPixels() end

--- Returns the absolute screen position of this GUIItem based on it's position, parent, hotSpot, and anchor based on the screen size passed in.
---@param screenSizeX number
---@param screenSizeY number
---@return Vector
function GUIItem:GetScreenPosition(screenSizeX, screenSizeY) end

--- Sets the anchor point for this GUIItem. The first argument can be either GUIItem.Left, GUIItem.Middle, or GUIItem.Right. The second arguement can be either GUIItem.Top, GUIItem.Center, or GUIItem.Bottom. The anchor point determines where on it's parent this GUIItem is positioned from.  NOTE: This is deprecated.  It is highly recommended to use the GUIItem:SetAnchor(vector) method instead.
---@param setXAnchor GUIItem.XAnchor
---@param setYAnchor GUIItem.YAnchor
function GUIItem:SetAnchor(setXAnchor, setYAnchor) end

--- The anchor determines where on the parent this child's origin is positioned.  The anchor is normalized to the parent's size (or the screen size if no parent exists).  This means, for example, that (0,0) will position the child starting from the upper-left corner of the parent item, while (1, 1) will position the child from the bottom-right corner of the item.
---@param anchorNormalized Vector
function GUIItem:SetAnchor(anchorNormalized) end

--- Returns the X anchor point of this GUIItem.  This is deprecated, and is only approximate since it's restricted to 3 enumerated values.
---@return GUIItem.XAnchor
function GUIItem:GetXAnchor() end

--- Returns the Y anchor point of this GUIItem.  This is deprecated, and is only approximate since it's restricted to 3 enumerated values.
---@return GUIItem.YAnchor
function GUIItem:GetYAnchor() end

--- Returns the normalized anchor coordinates of this GUIItem.
---@return Vector
function GUIItem:GetAnchor() end

--- Enables/disables the drop shadow effect for text.  Disabled by default.
---@param state boolean
function GUIItem:SetDropShadowEnabled(state) end

--- Returns whether or not a drop shadow effect is enabled for this GUIItem.  Drop shadows can only be used for text items currently.
---@return boolean
function GUIItem:GetDropShadowEnabled() end

--- Sets the offset of the drop shadow effect, in screen-space pixels.  The drop shadow is applied after scaling, so the shadow will be at a consistent distance regardless of the GUIItem's scale.
---@param offset Vector
function GUIItem:SetDropShadowOffset(offset) end

--- Returns the offset of the drop shadow effect, in screen-space pixels.  The default is 3 pixels down and 3 pixels right.
---@return Vector
function GUIItem:GetDropShadowOffset() end

--- Sets the color of the drop shadow effects.  Default is a 75% opaque black.
---@param color Color
function GUIItem:SetDropShadowColor(color) end

--- Returns the color of the drop shadow effect.
---@return Color
function GUIItem:GetDropShadowColor() end

--- Sets the color of this GUIItem. This color will be blended with the texture if one has been applied. See GUIItem:SetBlendTechnique and GUIItem:SetTexture.
---@param color Color
function GUIItem:SetColor(color) end

--- Returns the color this GUIItem is being blended with.
---@return Color
function GUIItem:GetColor() end

--- Adds the passed in GUIItem as a child to this GUIItem. Children are rendered relative to their parent.
---@param child GUIItem
function GUIItem:AddChild(child) end

--- Removes the passed in child GUIItem from this GUIItem.
---@param child GUIItem
function GUIItem:RemoveChild(child) end

--- Returns the parent of this GUIItem. If there is no parent, nil will be returned.
---@return GUIItem
function GUIItem:GetParent() end

--- Returns the number of children this GUIItem has.
---@return number
function GUIItem:GetNumChildren() end

--- Fills the GUIItemArray with the (sorted by layer) list of children this GUIItem has.
---@param guiItemArray GUIItemArray
function GUIItem:GetChildren(guiItemArray) end

--- Sets the layer this GUIItem renders into. Lower layers render first (layer 0 renders before 1).
---@param layer number
function GUIItem:SetLayer(layer) end

--- Returns the layer this GUIItem renders into. Default layer is 0.
---@return number
function GUIItem:GetLayer() end

--- Sets the size in pixels this GUIItem will be on the screen. The z component is ignored in the passed in Vector.
---@param setSize Vector
function GUIItem:SetSize(setSize) end

--- Returns the size in pixels this GUIItem will be on the screen.
---@return Vector
function GUIItem:GetSize() end

--- Returns the size of this GUIItem with the scaling applied to it.
---@return Vector
function GUIItem:GetScaledSize() end

--- Default scale is 1. A scale of 2, 2 will make this GUIItem twice as big. The z component is ignored in the passed in Vector.
---@param setScale Vector
function GUIItem:SetScale(setScale) end

--- Returns the scale of this GUIItem.
---@return Vector
function GUIItem:GetScale() end

--- Returns the scale of this GUIItem with all it's parent scale applied. Any parent of the parent (etc.) will also affect the scale.
---@return Vector
function GUIItem:GetAbsoluteScale() end

--- Sets whether the parent scaling is used to calculate the final scale of this object.
---@param setInherits boolean
function GUIItem:SetInheritsParentScaling(setInherits) end

--- Returns the parent scaling inheritance state.
---@return boolean
function GUIItem:GetInheritsParentScaling() end

--- Sets whether the parent position and anchor is used when calculating the position of this object.  If false, the item's position is interpreted as being in screen space, with the anchor using the screen size -- same as if it didn't have a parent.
---@param setInherits boolean
function GUIItem:SetInheritsParentPosition(setInherits) end

--- Returns the parent scaling inheritance state.
---@return boolean
function GUIItem:GetInheritsParentPosition() end

--- Sets the rotation of this GUIItem in radians per axis. NOTE: This method is deprecated, as rotation of a GUIItem is only one value... no idea why this was ever set with a Vector... only the z component was ever used. Use SetAngle instead.
---@param setRotation Vector
function GUIItem:SetRotation(setRotation) end

--- Sets the angle of this GUIItem.  Rotation applies only to this object -- it does not propagate to children.  Children are positioned as though parent was not rotated.  (This is due to the fact that GUIItems do not support skewing, so a rotation --> scale --> rotation would not be possible.)
---@param radians number
function GUIItem:SetAngle(radians) end

--- Returns the rotation of this GUIItem in radians per axis.  DEPRECATED.  Only the z-component is used.  Use GetAngle() instead.
---@return Vector
function GUIItem:GetRotation() end

--- Returns the angle, in radians, of this GUIItem.
---@return number
function GUIItem:GetAngle() end

--- Changes the pivot point of the rotation to the value, in pixels.  By default it is located at the center of the GUIItem.  When changed with this method, the measurements are absolute -- resizing the object will NOT also resize these coordinates to match the same relative position on the object.  Use the normalized coordinates variant of this method for such behavior.
---@param setOffset Vector
function GUIItem:SetRotationOffset(setOffset) end

--- Changes the pivot point of the rotation the the given normalized coordinate values.  By default it is located at the center of the GUIItem.  Normalized coordinates remain constant if item is resized (so setting it to 0.5, 0.5, then resizing object, normalized coordinates remain at 0.5, 0.5)
---@param setOffset Vector
function GUIItem:SetRotationOffsetNormalized(setOffset) end

--- Returns the pivot point of the rotation, in pixels.
---@return Vector
function GUIItem:GetRotationOffset() end

--- Returns the pivot point of the rotation, in normalized coordinates.
---@return Vector
function GUIItem:GetRotationOffsetNormalized() end

--- Sets whether the parent alpha is modulated into the color when GetColor() is called.
---@param setInherits boolean
function GUIItem:SetInheritsParentAlpha(setInherits) end

--- Returns the alpha inheritance state.
---@return boolean
function GUIItem:GetInheritsParentAlpha() end

--- Changes the blend technique used when rendering this GUIItem. Blend techniques are GUIItem.Default, GUIItem.Add, or GUIItem.Multiply.
---@param setTechnique GUIItem.BlendTechnique
function GUIItem:SetBlendTechnique(setTechnique) end

--- Returns the blend technique of this GUIItem.
---@return GUIItem.BlendTechnique
function GUIItem:GetBlendTechnique() end

--- Sets whether or not this GUIItem will be rendered into the stencil buffer.
---@param setIsStencil boolean
function GUIItem:SetIsStencil(setIsStencil) end

--- Returns whether or not this GUIItem will be rendered into the stencil buffer.
---@return boolean
function GUIItem:GetIsStencil() end

--- Sets the stencil mode which will change how pixels render into stencils. Options are GUIItem.Always, GUIItem.Equal, and GUIItem.NotEqual. Defaults to GUIItem.Always.
---@param setFunc GUIItem.StencilFunc
function GUIItem:SetStencilFunc(setFunc) end

--- Returns the current stencil mode.
---@return GUIItem.StencilFunc
function GUIItem:GetStencilFunc() end

--- If set to true, will clear the shared stencil buffer before rendering. This only has an effect if this item is a stencil.
---@param setClears boolean
function GUIItem:SetClearsStencilBuffer(setClears) end

--- Returns the stencil buffer clear mode.
---@return boolean
function GUIItem:GetClearsStencilBuffer() end

--- Sets whether parent stencil settings are inherited by this GUIItem. All settings regarding stenciling are the same as the parent.
---@param setInherits boolean
function GUIItem:SetInheritsParentStencilSettings(setInherits) end

--- Returns the stencil inheritance state.
---@return boolean
function GUIItem:GetInheritsParentStencilSettings() end

--- Changes the texture coordinates this GUIItem will use when rendering. The coordinates are in normalized space (0-1). By default the coordinates include the entire image.
---@param setX1 number
---@param setY1 number
---@param setX2 number
---@param setY2 number
function GUIItem:SetTextureCoordinates(setX1, setY1, setX2, setY2) end

--- Changes the texture coordinates this GUIItem will use when rendering. The coordinates are in pixel, image space (0-image width/height). By default the coordinates include the entire image.
---@param pixelX1 number
---@param pixelY1 number
---@param pixelX2 number
---@param pixelY2 number
function GUIItem:SetTexturePixelCoordinates(pixelX1, pixelY1, pixelX2, pixelY2) end

--- This function is deprecated.
---@param setSize number
function GUIItem:SetFontSize(setSize) end

--- Sets the name of the font asset used in rendering.
---@param fontName string
function GUIItem:SetFontName(fontName) end

--- Returns the name of the font asset used in rendering.
---@return string
function GUIItem:GetFontName() end

--- Sets the text to draw within a box when clipped is enabled.
---@param setTextClipped boolean
---@param setWidth number
---@param setHeight number
function GUIItem:SetTextClipped(setTextClipped, setWidth, setHeight) end

--- Returns whether the text is set to draw clipped within a box.
---@return boolean
function GUIItem:GetTextClipped() end

--- Changes how the text is positioned in the x axis. This can be either the left (GUIItem.Align_Min), middle (GUIItem.Align_Center), or right (GUIItem.Align_Max) of the text no matter it's size. By default it is left.
---@param alignment GUIItem.Alignment
function GUIItem:SetTextAlignmentX(alignment) end

--- Changes how the text is positioned in the y axis. This can be either the top (GUIItem.Align_Min), center (GUIItem.Align_Center), or bottom (GUIItem.Align_Max) of the text no matter it's size. By default it is top.
---@param alignment GUIItem.Alignment
function GUIItem:SetTextAlignmentY(alignment) end

--- Returns the current alignment for the x axis.
---@return GUIItem.Alignment
function GUIItem:GetTextAlignmentX() end

--- Returns the current alignment for the y axis.
---@return GUIItem.Alignment
function GUIItem:GetTextAlignmentY() end

--- Sets the texture this GUIItem will use. Pass in the file name of the image that will be displayed.
---@param fileName string
function GUIItem:SetTexture(fileName) end

--- Returns the texture this GUIItem will use.
---@return string
function GUIItem:GetTexture() end

--- Sets an additional texture that will be passed into the shader this GUIItem uses. This is not useful with the default shader but can be used with custom shaders for masking and other effects.
---@param name string
---@param fileName string
function GUIItem:SetAdditionalTexture(name, fileName) end

--- Sets the shader this GUIItem will render with. Pass in the file name of the *.surface_shader. This defaults to "shaders/GUIBasic.surface_shader" and won't need to be changed in most cases.
---@param name string
function GUIItem:SetShader(name) end

--- Returns the name of the shader currently being used to render this GUIItem.
---@return string
function GUIItem:GetShader() end

--- Adds a line to be drawn. These lines will only be drawn if the ManageRender flag is set and this GUIItem doesn't have text to render.
---@param point1 Vector
---@param point2 Vector
---@param color Color
function GUIItem:AddLine(point1, point2, color) end

--- Removes all existing lines. They will not be rendered after this call.
function GUIItem:ClearLines() end

--- Sets option flag on the GUIItem.
---@param inFlag GUIItem.Options
function GUIItem:SetOptionFlag(inFlag) end

--- Clears an option flag.
---@param inFlag GUIItem.Options
function GUIItem:ClearOptionFlag(inFlag) end

--- Returns true if the passed in flag is set.
---@param inFlag GUIItem.Options
---@return boolean
function GUIItem:IsOptionFlagSet(inFlag) end

--- Sets a float parameter for this GUIItem's shader. This is not useful with the default shader but can be used with custom shaders for masking and other effects.
---@param name string
---@param _dummy3 number
function GUIItem:SetFloatParameter(name, _dummy3) end

--- Sets a float2 parameter for this GUIItem's shader.
---@param name string
---@param vector Vector
function GUIItem:SetFloat2Parameter(name, vector) end

--- Sets a float3 parameter for this GUIItem's shader.
---@param name string
---@param vector Vector
function GUIItem:SetFloat3Parameter(name, vector) end

--- Sets a float3 parameter for this GUIItem's shader.  Alpha channel of input color is ignored.
---@param name string
---@param color Color
function GUIItem:SetFloat3Parameter(name, color) end

--- Sets a float4 parameter for this GUIItem's shader.
---@param name string
---@param color Color
function GUIItem:SetFloat4Parameter(name, color) end

--- Sets a float4 parameter for this GUIItem's shader.  Fourth component is set to 1.0
---@param name string
---@param color Vector
function GUIItem:SetFloat4Parameter(name, color) end

--- This function is deprecated.
---@param bold boolean
function GUIItem:SetFontIsBold(bold) end

--- This function is deprecated.
---@return boolean
function GUIItem:GetFontIsBold() end

--- This function is deprecated.
---@param bold boolean
function GUIItem:SetFontIsItalic(bold) end

--- This function is deprecated.
---@return boolean
function GUIItem:GetFontIsItalic() end

--- Returns the width of the text if it was rendered with the current state of this GUIItem.
---@param text string
---@return number
function GUIItem:GetTextWidth(text) end

--- Returns the max height of the text if it was rendered with the current state of this GUIItem.
---@param text string
---@return number
function GUIItem:GetTextHeight(text) end

--- Returns true if the given font is capable of displaying the given string, or false if 1 or more characters of the string cannot be displayed using the selected font.
---@param fontName string
---@param text string
---@return boolean
function GUIItem:GetCanFontRenderString(fontName, text) end

--- Returns the width of the texture in pixels, or -1 if there is no texture.
---@return number
function GUIItem:GetTextureWidth() end

--- Returns the height of the texture in pixels, or -1 if there is no texture.
---@return number
function GUIItem:GetTextureHeight() end

--- Changes the text that will be rendered.
---@param setText string
function GUIItem:SetText(setText) end

--- Returns the text that is being rendered.
---@return string
function GUIItem:GetText() end

--- Changes the text that will be rendered using a wide string.
---@param text wstring
function GUIItem:SetWideText(text) end

--- Returns the wide text that is being rendered.
---@return wstring
function GUIItem:GetWideText() end

--- Changes the position of the origin of this item, in normalized coordinates.  For example, a value of 0, 0 corresponds to the upper-left corner (eg calling SetPosition is now changing where the upper-left corner of this item is located) while a value of 1, 1 corresponds to the lower-right corner. Note that this only works if the GUIItem.CorrectScaling flag is set.
---@param hotSpot Vector
function GUIItem:SetHotSpot(hotSpot) end

--- Changes the position of the origin of this item, in (un-scaled) pixels.  For example, a value of 0, 0 corresponds to the upper-left corner (eg calling SetPosition is now changing where the upper-left corner of this item is located) while a value matching the size of the item (eg 32, 64 if the item has been set to 32x64) would correspond to the lower-right corner. Note that this only works if the GUIItem.CorrectScaling flag is set.
---@param x number
---@param y number
function GUIItem:SetPixelHotSpot(x, y) end

--- Returns the hot spot, in normalized coordinates.
---@return Vector
function GUIItem:GetHotSpot() end

--- Returns the hot spot, in pixel coordinates.
---@return Vector
function GUIItem:GetPixelHotSpot() end

--- Sets the name of the GUIItem so it can be more easily identified in the debugger.  Only has an effect in DEBUG builds.
---@param name string
function GUIItem:SetDebugName(name) end

--- Returns true if this item was rendered to the screen last frame.  This means that it was visible, not off-screen, not cropped-away, not 100% transparent, and that its contents actually made it into the vertex buffer.  This is significantly cheaper than testing if this item _will_ be visible this frame (rendering takes place afterwards).
---@return boolean
function GUIItem:GetWasRenderedLastFrame() end

---@class GUIItemArray
GUIItemArray = {}

---@return number
function GUIItemArray:GetSize() end

---@param i number
---@return GUIItem
function GUIItemArray:Get(i) end

GUIItem.Left = "GUIItem.Left"
GUIItem.Middle = "GUIItem.Left"
GUIItem.Right = "GUIItem.Left"
---@enum GUIItem.XAnchor
GUIItem.XAnchor = {
    Left = GUIItem.Left,
    Middle = GUIItem.Middle,
    Right = GUIItem.Right
}

GUIItem.Top = "GUIItem.Top"
GUIItem.Center = "GUIItem.Center"
GUIItem.Bottom = "GUIItem.Bottom"
---@enum GUIItem.YAnchor
GUIItem.YAnchor = {
    Top = GUIItem.Top,
    Center = GUIItem.Center,
    Bottom = GUIItem.Bottom
}

GUIItem.Default = "GUIItem.Default"
GUIItem.Add = "GUIItem.Add"
GUIItem.Multiply = "GUIItem.Multiply"
GUIItem.Set = "GUIItem.Set"
GUIItem.Premultiplied = "GUIItem.Premultiplied"
---@enum GUIItem.BlendTechnique
GUIItem.BlendTechnique = {
    Default = GUIItem.Default,
    Add = GUIItem.Add,
    Multiply = GUIItem.Multiply,
    Set = GUIItem.Set,
    Premultiplied = GUIItem.Premultiplied
}

GUIItem.Always = "GUIItem.Always"
GUIItem.Equal = "GUIItem.Equal"
GUIItem.NotEqual = "GUIItem.NotEqual"
---@enum GUIItem.StencilFunc
GUIItem.StencilFunc = {
    Always = GUIItem.Always,
    Equal = GUIItem.Equal,
    NotEqual = GUIItem.NotEqual
}

GUIItem.ManageRender = "GUIItem.ManageRender"
GUIItem.CorrectScaling = "GUIItem.CorrectScaling"
GUIItem.PerLineTextAlignment = "GUIItem.PerLineTextAlignment"
GUIItem.CorrectRotationOffset = "GUIItem.CorrectRotationOffset"
GUIItem.DistanceFieldFont = "GUIItem.DistanceFieldFont"
GUIItem.Interaction_BlockChildren = "GUIItem.Interaction_BlockChildren"
GUIItem.Interaction_1 = "GUIItem.Interaction_1"
GUIItem.Interaction_2 = "GUIItem.Interaction_2"
GUIItem.Interaction_3 = "GUIItem.Interaction_3"
GUIItem.Interaction_4 = "GUIItem.Interaction_4"
GUIItem.Interaction_5 = "GUIItem.Interaction_5"
GUIItem.Interaction_6 = "GUIItem.Interaction_6"
GUIItem.Interaction_7 = "GUIItem.Interaction_7"
GUIItem.Interaction_8 = "GUIItem.Interaction_8"
GUIItem.Interaction_9 = "GUIItem.Interaction_9"
GUIItem.Interaction_10 = "GUIItem.Interaction_10"
---@enum GUIItem.Options
GUIItem.Options = {
    ManageRender = GUIItem.ManageRender,
    CorrectScaling = GUIItem.CorrectScaling,
    PerLineTextAlignment = GUIItem.PerLineTextAlignment,
    CorrectRotationOffset = GUIItem.CorrectRotationOffset,
    DistanceFieldFont = GUIItem.DistanceFieldFont,
    Interaction_BlockChildren = GUIItem.Interaction_BlockChildren,
    Interaction_1 = GUIItem.Interaction_1,
    Interaction_2 = GUIItem.Interaction_2,
    Interaction_3 = GUIItem.Interaction_3,
    Interaction_4 = GUIItem.Interaction_4,
    Interaction_5 = GUIItem.Interaction_5,
    Interaction_6 = GUIItem.Interaction_6,
    Interaction_7 = GUIItem.Interaction_7,
    Interaction_8 = GUIItem.Interaction_8,
    Interaction_9 = GUIItem.Interaction_9,
    Interaction_10 = GUIItem.Interaction_10
}

GUIItem.Align_Min = "GUIItem.Align_Min"
GUIItem.Align_Center = "GUIItem.Align_Center"
GUIItem.Align_Max = "GUIItem.Align_Max"
---@enum GUIItem.Alignment
GUIItem.Alignment = {
   Align_Min = GUIItem.Align_Min,
   Align_Center = GUIItem.Align_Center,
   Align_Max = GUIItem.Align_Max
}