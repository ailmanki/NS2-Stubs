---@meta RenderModelArray
--- Render.json

---@class RenderModelArray
RenderModelArray = {}

---@param visible boolean
function RenderModelArray:SetIsVisible(visible) end

---@return boolean
function RenderModelArray:GetIsVisible() end

---@param renderMask number
function RenderModelArray:SetRenderMask(renderMask) end

---@return number
function RenderModelArray:GetRenderMask() end

---@param castsShadows boolean
function RenderModelArray:SetCastsShadows(castsShadows) end

---@return boolean
function RenderModelArray:GetCastsShadows() end

function RenderModelArray:InstanceMaterials() end

---@param name string
---@param value number
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value string
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value Vector
function RenderModelArray:SetMaterialParameter(name, value) end

---@param name string
---@param value Color
function RenderModelArray:SetMaterialParameter(name, value) end

---@param modelIndex number
function RenderModelArray:SetModelByIndex(modelIndex) end

---@param modelName string
function RenderModelArray:SetModelByName(modelName) end

function RenderModelArray:Clear() end

---@param table table
function RenderModelArray:SetModels(table) end