---@meta SoundEventInstance
--- Client.json

---@class SoundEventInstance
SoundEventInstance = {}

---@param setParentId number
function SoundEventInstance:SetParent(setParentId) end

---@return number
function SoundEventInstance:GetParent() end

---@param coords Coords
function SoundEventInstance:SetCoords(coords) end

---@param paramName string
---@param value number
---@param seekSpeed number
---@return boolean
function SoundEventInstance:SetParameter(paramName, value, seekSpeed) end

---@return boolean
function SoundEventInstance:GetIsPlaying() end

---@param volume number
function SoundEventInstance:SetVolume(volume) end

---@param minDistance number
function SoundEventInstance:SetMinDistance(minDistance) end

---@param maxDistance number
function SoundEventInstance:SetMaxDistance(maxDistance) end

---@param pitch number
function SoundEventInstance:SetPitch(pitch) end

---@param rolloff SoundSystem.Rolloff
function SoundEventInstance:SetRolloff(rolloff) end

---@param positional boolean
function SoundEventInstance:SetPositional(positional) end

function SoundEventInstance:Start() end

function SoundEventInstance:Stop() end