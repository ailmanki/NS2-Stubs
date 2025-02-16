---@meta Event
--- Event.json

---@class Event
Event = {}

--- Pass in an event name and a function to be called when that event triggers in the engine.
---@param name string
---@param func function
function Event.Hook(name, func) end

--- Pass in an event name and a function to be called when that event triggers in the engine.
---@param name string
---@param func function
---@param unusedTag string
function Event.Hook(name, func, unusedTag) end

--- Pass in an event name and the function to be remove for event, returns true if the function was removed for the event.
---@param name string
---@param func function
---@return boolean
function Event.RemoveHook(name, func) end