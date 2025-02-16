---@meta AnimationGraph
--- AnimationGraph.json

---@class AnimationGraph
AnimationGraph = {}

--- Returns the name of a tag. Index is 0 based.
---@param model Model
---@param tagIndex number
---@return string
function AnimationGraph:GetTagName(model, tagIndex) end

--- Returns the name of the animation graph file loaded into this AnimationGraph.
---@return string
function AnimationGraph:GetFileName() end

--- Returns the loadId for the graph. If the graph changes, the graphstate must be recreated.
---@return number
function AnimationGraph:GetLoadId() end

--- Returns the number of inputs to the animation graph.
---@return number
function AnimationGraph:GetNumInputs() end

--- Returns the name of an animation graph input.
---@param index number
---@return string
function AnimationGraph:GetInputName(index) end


