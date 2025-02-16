---@meta ScreenEffect
--- Render.json

---@class ScreenEffect
ScreenEffect = {}

---@param setActive boolean
function ScreenEffect:SetActive(setActive) end

---@return boolean
function ScreenEffect:GetActive() end

---@param name string
---@param value number
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value number
function ScreenEffect:SetParameterIndex(name, index, value) end

---@param name string
---@param value Vector
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value Vector
function ScreenEffect:SetParameterIndex(name, index, value) end

---@param name string
---@param value Color
function ScreenEffect:SetParameter(name, value) end

---@param name string
---@param index number
---@param value Color
function ScreenEffect:SetParameterIndex(name, index, value) end