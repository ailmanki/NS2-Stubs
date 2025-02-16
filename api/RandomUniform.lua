---@class Randomizer
Randomizer = {}

---@return Randomizer
function Randomizer.new() end

---@param seed number
function Randomizer:randomseed(seed) end

---@return number
function Randomizer:random() end

---@param min number
---@param max number
---@return number
function Randomizer:random(min, max) end