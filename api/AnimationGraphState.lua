---@meta AnimationGraphState
--- AnimationGraph.json

---@class AnimationGraphState
AnimationGraphState = {}

--- Creates a new AnimationGraphState() object.
---@return AnimationGraphState
function AnimationGraphState:AnimationGraphState() end


--- Sets whether or not debug logging is enabled for this animation graph state.
---@param logEnabled boolean
function AnimationGraphState:SetLogEnabled(logEnabled) end

--- Ensures that the state is setup to handle the graph.
---@param graph AnimationGraph
function AnimationGraphState:PrepareForGraph(graph) end

--- Resets the animation state to the starting state. This should be called if the animation graph is changed.
---@param graph AnimationGraph
---@param model Model
---@param time number
function AnimationGraphState:Reset(graph, model, time) end

--- Sets the number value of one of the inputs to the animation graph.
---@param graph AnimationGraph
---@param name string
---@param value number
function AnimationGraphState:SetInputValue(graph, name, value) end

--- Sets the string value of one of the inputs to the animation graph.
---@param graph AnimationGraph
---@param name string
---@param value string
function AnimationGraphState:SetInputValue(graph, name, value) end

--- Sets the boolean value of one of the inputs to the animation graph.
---@param graph AnimationGraph
---@param name string
---@param value boolean
function AnimationGraphState:SetInputValue(graph, name, value) end

--- Gets the current bone coords for the model based on the state of the animation graph.
---@param model Model
---@param poseParams PoseParams
---@param boneCoords CoordsArray
function AnimationGraphState:GetBoneCoords(model, poseParams, boneCoords) end

--- Updates the animation state. Pass in a table as the last argument. This table is filled with all the animation tags that are passed in this update.
---@param graph AnimationGraph
---@param model Model
---@param poseParams PoseParams
---@param prevTime number
---@param time number
---@param passedTags table
function AnimationGraphState:Update(graph, model, poseParams, prevTime, time, passedTags) end

---@param graph AnimationGraph
---@param model Model
---@param poseParams PoseParams
---@param prevTime number
---@param time number
---@param passedTags PassedTags
function AnimationGraphState:Update2(graph, model, poseParams, prevTime, time, passedTags) end

--- Must be called right after AnimationGraphState:Update() to transition between nodes. Pass in a table as the last argument. This table is filled with all the animation tags that are passed in this transition.
---@param graph AnimationGraph
---@param model Model
---@param passedTags table
function AnimationGraphState:Transition(graph, model, passedTags) end

--- Must be called right after AnimationGraphState:Update() to transition between nodes. Pass in a table as the last argument. This table is filled with all the animation tags that are passed in this transition.
---@param graph AnimationGraph
---@param model Model
---@param passedTags PassedTags
function AnimationGraphState:Transition2(graph, model, passedTags) end

--- Sets information about the time the animation is currently playing. Generally this is only called to synchronize the animation state with some saved state. Otherwise setting the time happens through the Update function.
---@param time number
function AnimationGraphState:SetTime(time) end

--- Returns the node of the graph that the state currently occupies.
---@param layer number
---@return number
function AnimationGraphState:GetCurrentNode(layer) end

--- Sets the node of the graph that the state currently occupies. This doesn't cause the actions for the node to happen.
---@param layer number
---@param nodeId number
function AnimationGraphState:SetCurrentNode(layer, nodeId) end

--- Sets information about the animation currently blending in on a layer. Generally this is only called to synchronize the animation state with some saved state. Otherwise triggering new animations happens through state transitions.
---@param layerIndex number
---@param blendIndex number
---@param animationIndex number
---@param startTime number
---@param speed number
---@param blendTime number
function AnimationGraphState:SetCurrentAnimation(layerIndex, blendIndex, animationIndex, startTime, speed, blendTime) end

--- Extracts information about the animation currently blending in on a layer. Returns the animation index, start time, speed, and blend time.
---@param layerIndex number
---@param blendIndex number
---@param info CurrentAnimationInfo
function AnimationGraphState:GetCurrentAnimationStruct(layerIndex, blendIndex, info) end

--- Logs the input state for debugging.
---@param graph AnimationGraph
---@param model Model
function AnimationGraphState:LogState(graph, model) end

--- Returns the current time for the animation graph.
---@return number
function AnimationGraphState:GetTime() end