---@meta
--- Render.json

---@class RenderModel
RenderModel = {}

---@param visible boolean
function RenderModel:SetIsVisible(visible) end

---@return boolean
function RenderModel:GetIsVisible() end

---@param renderMask number
function RenderModel:SetRenderMask(renderMask) end

---@return number
function RenderModel:GetRenderMask() end

---@param groupName string
function RenderModel:SetGroup(groupName) end

---@param modelIndex number
function RenderModel:SetModelByIndex(modelIndex) end

---@param modelName string
function RenderModel:SetModelByName(modelName) end

---@param isStatic boolean
function RenderModel:SetIsStatic(isStatic) end

---@param instanced boolean
function RenderModel:SetIsInstanced(instanced) end

---@return boolean
function RenderModel:GetIsInstanced() end

---@param coords Coords
function RenderModel:SetCoords(coords) end

---@return Coords
function RenderModel:GetCoords() end

---@param boneCoords CoordsArray
function RenderModel:SetBoneCoords(boneCoords) end

---@return number
function RenderModel:GetNumBones() end

---@param entityId number
function RenderModel:SetEntityId(entityId) end

---@param castsShadows boolean
function RenderModel:SetCastsShadows(castsShadows) end

---@return boolean
function RenderModel:GetCastsShadows() end

---@param name string
---@param value number
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value string
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value Vector
function RenderModel:SetMaterialParameter(name, value) end

---@param name string
---@param value Color
function RenderModel:SetMaterialParameter(name, value) end

---@param material RenderMaterial
function RenderModel:AddMaterial(material) end

---@param material RenderMaterial
function RenderModel:RemoveMaterial(material) end

---@return number
function RenderModel:GetNumLayers() end

---@param layerIndex number
---@return RenderMaterial
function RenderModel:GetLayer(layerIndex) end

function RenderModel:InstanceMaterials() end

---@return RenderScene.Zone
function RenderModel:GetZone() end

---@return number
function RenderModel:GetNumFramesInvisible() end

--- Flushes all override materials from memory and being active
function RenderModel:ClearOverrideMaterials() end

--- Sets a new material to override a specific material index compiled in model. The material index must match 1:1 what the model has when it was compiled. See Model:GetMaterials
---@param materialIndex number
---@param materialName string
---@return boolean
function RenderModel:SetOverrideMaterial(materialIndex, materialName) end

--- Flushed and removes an override material per the supplied material index
---@param materialIndex number
---@return boolean
function RenderModel:RemoveOverrideMaterial(materialIndex) end

--- Returns the string of the material name (note: not the full path) of an override material at the supplied material index
---@param materialIndex number
---@return string
function RenderModel:GetOverrideMaterialName(materialIndex) end

--- Returns the amount of pending material overrides in the RenderModel.
---@return number
function RenderModel:GetNumPendingMaterialOverrides() end

--- Returns if materials have been loaded and there are zero pending override materials.
---@return boolean
function RenderModel:GetReadyForOverrideMaterials() end

function RenderModel:LogAllMaterials() end
