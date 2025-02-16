---@meta

---@param name string
---@param reload boolean?
function Script.Load(name, reload) end

---@generic T
---@param v `T`
---@param message string?
---@return `T` T
function ASSERT(   v,   message ) end

---@param string name
function PROFILE(name) end