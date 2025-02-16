---@meta VelocityArray

---@class Shared
 Shared = {}

--- Return max number of entities in game
---@return number
function Shared.GetMaxNumEntities() end

--- The latest known performance data for server.
---@return ServerPerformanceData
function Shared.GetServerPerformanceData() end

---@return number
function Shared.GetScriptTraceTime() end

---@param limit number
---@return void
function Shared.SetScriptTraceTimeLimit(limit) end

--- Returns the value for the given shared server setting variables (keys include "mr", "interp", "dev", "cheats", "speed").
---@param key string
---@return string
function Shared.GetSettingsVariable(key) end

--- Return the value of a server property. A server property differs from a server setting in that any keys can be used, and the server properties are only transferred to the client once, at map load. Changing them during the game is thus a bad idea, as only clients connecting after the change will get them.
--- If the key does not exists, NULL is returned.
---@param key string
---@return string
function Shared.GetServerProperty(key) end

---@return boolean
function Shared.GetCheatsEnabled() end

---@return boolean
function Shared.GetTestsEnabled() end

---@return boolean
function Shared.GetDevMode() end

---@return boolean
function Shared.GetThunderdomeEnabled() end

---@param minValue number
---@param maxValue number
---@return number
function Shared.GetRandomInt(minValue, maxValue) end

---@return number
function Shared.GetRandomFloat() end

---@param min number
---@param max number
---@return number
function Shared.GetRandomFloat(min, max) end

---@return string
function Shared.GetMapName() end

---@param className string
---@param mapName string
---@return void
function Shared.LinkClassToMap(className, mapName) end

---@param className string
---@param mapName string
---@param variables table
---@return void
function Shared.LinkClassToMap(className, mapName, variables) end

---@param className string
---@param mapName string
---@param variables table
---@param compensated boolean
---@return void
function Shared.LinkClassToMap(className, mapName, variables, compensated) end

--- Return the network message defintion for the messageName.
--- Can be used to modify the message by re-registering it using the same name.
---@param messageName string
---@return table
function Shared.GetNetworkMessageDefinition(messageName) end

--- Register a network message. Re-registering a message with the same name will override the current.
---@param messageName string
---@param variables table
---@return void
function Shared.RegisterNetworkMessage(messageName, variables) end

--- Register an empty network message.
---@param messageName string
---@return void
function Shared.RegisterNetworkMessage(messageName) end

---@param pattern string
---@param recursive boolean
---@param matchingFileTable table
---@return void
function Shared.GetMatchingFileNames(pattern, recursive, matchingFileTable) end

---@param fileName string
---@return void
function Shared.PrecacheAnimationGraph(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheModel(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheSound(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheSurfaceShader(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheTexture(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheMaterial(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheFont(fileName) end

---@param fileName string
---@return void
function Shared.PrecacheCinematic(fileName) end

---@param string string
---@return void
function Shared.PrecacheString(string) end

---@param stringIndex number
---@return string
function Shared.GetString(stringIndex) end

---@param soundEventName string
---@return number
function Shared.GetSoundIndex(soundEventName) end

---@param stringName string
---@return number
function Shared.GetStringIndex(stringName) end

---@param cinematicEventName string
---@return number
function Shared.GetCinematicIndex(cinematicEventName) end

---@param cinematicIndex number
---@return string
function Shared.GetCinematicFileName(cinematicIndex) end

---@param fileName string
---@return number
function Shared.GetModelIndex(fileName) end

--- Returns the length of an animation for a model, in seconds. Will load model if not already loaded, so ensure this is only called during loading to avoid potential performance hit.
---@param fileName string
---@param animationName string
---@return number
function Shared.GetAnimationLength(fileName, animationName) end

--- Return a resource id for the given model filename, adding it if not present already.
---@param fileName string
---@return number
function Shared.LoadModel(fileName) end

---@param modelIndex number
---@return string
function Shared.GetModelName(modelIndex) end

---@param modelIndex number
---@return Model
function Shared.GetModel(modelIndex) end

---@param fileName string
---@return number
function Shared.GetAnimationGraphIndex(fileName) end

---@param animationGraphIndex number
---@return string
function Shared.GetAnimationGraphName(animationGraphIndex) end

---@param animationGraphIndex number
---@return AnimationGraph
function Shared.GetAnimationGraph(animationGraphIndex) end

---@param url string
---@return string
function Shared.GetHTTPRequest(url) end

--- Prepare for parallel physics run.
---@param entity Entity
---@param state AnimationGraphState
---@param model Model
---@param poseParams PoseParams
---@param boneCoords CoordsArray
---@param dynamic boolean
---@param modelCoords Coords
---@param physicsModel CollisionObject
---@return void
function Shared.PreparePhysics(entity, state, model, poseParams, boneCoords, dynamic, modelCoords, physicsModel) end

---@param url string
---@param method string
---@return void
function Shared.SendHTTPRequest(url, method) end

---@param url string
---@param method string
---@param callback function
---@return void
function Shared.SendHTTPRequest(url, method, callback) end

---@param url string
---@param method string
---@param params table
---@return void
function Shared.SendHTTPRequest(url, method, params) end

---@param url string
---@param method string
---@param params table
---@param callback function
---@return void
function Shared.SendHTTPRequest(url, method, params, callback) end

---@param quotes boolean
---@return string
function Shared.GetGMTString(quotes) end

---@return number
function Shared.GetBuildNumber() end

---@return number
function Shared.GetBuildSystemBuildId() end

---@param groupName string
---@param physicsId number
---@return void
function Shared.PreLoadSetGroupPhysicsId(groupName, physicsId) end

---@param groupName string
---@return void
function Shared.PreLoadSetGroupNeverVisible(groupName) end

---@param startEntity Entity
---@return Entity
function Shared.FindNextEntity(startEntity) end

---@param id number
---@return Entity
function Shared.GetEntity(id) end

---@param className string
---@return ClassEntityList
function Shared.GetEntitiesWithClassname(className) end

---@param tag string
---@return TagEntityList
function Shared.GetEntitiesWithTag(tag) end

---@param entityId number
---@param tag string
---@return void
function Shared.AddTagToEntity(entityId, tag) end

---@param entityId number
---@param tag string
---@return void
function Shared.RemoveTagFromEntity(entityId, tag) end

--- Returns the current world time. This is advanced at the start of OnProcessMove and OnUpdate. Returns when a world update (ie, a tick) was last completed.
---@param coords1 Coords
---@param coords2 Coords
---@param amount number
---@return Coords
function Shared.SlerpCoords(coords1, coords2, amount) end

---@param player Entity
---@param soundEventName string
---@return void
function Shared.PlaySound(player, soundEventName) end

---@param player Entity
---@param soundEventName string
---@param volume number
---@return void
function Shared.PlaySound(player, soundEventName, volume) end

---@param player Entity
---@param soundEventName string
---@param volume number
---@param pitch number
---@return void
function Shared.PlaySound(player, soundEventName, volume, pitch) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@return void
function Shared.PlayWorldSound(player, soundEventName, parent) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@param volume number
---@return void
function Shared.PlayWorldSound(player, soundEventName, parent, volume) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@param origin Vector
---@return void
function Shared.PlayWorldSound(player, soundEventName, parent, origin) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@param origin Vector
---@param volume number
---@return void
function Shared.PlayWorldSound(player, soundEventName, parent, origin, volume) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@param volume number
---@param origin Vector
---@return void
function Shared.PlayPrivateSound(player, soundEventName, parent, volume, origin) end

---@param player Entity
---@param soundEventName string
---@return void
function Shared.StopSound(player, soundEventName) end

---@param player Entity
---@param soundEventName string
---@param parent Entity
---@return void
function Shared.StopSound(player, soundEventName, parent) end

---@param group1 number
---@param group2 number
---@return void
function Shared.SetPhysicsCollisionCallbackEnabled(group1, group2) end

---@param obj1 CollisionObject
---@param obj2 CollisionObject
---@param collisionsEnabled boolean
---@return void
function Shared.SetPhysicsObjectCollisionsEnabled(obj1, obj2, collisionsEnabled) end

---@param coords Coords
---@param velocity Vector
---@param previousBoneCoords CoordsArray
---@param boneCoords CoordsArray
---@param deltaTime number
---@param boneVelocities VelocityArray
---@return void
function Shared.CalculateBoneVelocities(coords, velocity, previousBoneCoords, boneCoords, deltaTime, boneVelocities) end

---@param entity Entity
---@return CollisionObject
function Shared.CreateCollisionObject(entity) end

---@param modelName string
---@param dynamic boolean
---@param coords Coords
---@param entity Entity
---@return CollisionObject
function Shared.CreatePhysicsModel(modelName, dynamic, coords, entity) end

---@param modelIndex number
---@param dynamic boolean
---@param coords Coords
---@param entity Entity
---@return CollisionObject
function Shared.CreatePhysicsModel(modelIndex, dynamic, coords, entity) end

---@param dynamic boolean
---@param radius number
---@param mass number
---@param coords Coords
---@return CollisionObject
function Shared.CreatePhysicsSphereBody(dynamic, radius, mass, coords) end

---@param collisionObject CollisionObject
---@return void
function Shared.DestroyCollisionObject(collisionObject) end

---@param dynamic boolean
---@param extents Vector
---@param mass number
---@param coords Coords
---@return CollisionObject
function Shared.CreatePhysicsBoxBody(dynamic, extents, mass, coords) end

---@param collisionRepName string
---@return number
function Shared.GetCollisionRepId(collisionRepName) end

---@param extents Vector
---@param origin Vector
---@param collisionRep number
---@param groupsMask number
---@param filter function
---@return boolean
function Shared.CollideBox(extents, origin, collisionRep, groupsMask, filter) end

---@param origin Vector
---@param radius number
---@param height number
---@param collisionRep number
---@param groupsMask number
---@param filter function
---@return boolean
function Shared.CollideCapsule(origin, radius, height, collisionRep, groupsMask, filter) end

---@param start Vector
---@param endPoint Vector
---@param collisionRep number
---@param filter function
---@return Trace
function Shared.TraceRay(start, endPoint, collisionRep, filter) end

---@param start Vector
---@param endPoint Vector
---@param collisionRep number
---@param groupsMask number
---@param filter function
---@return Trace
function Shared.TraceRay(start, endPoint, collisionRep, groupsMask, filter) end

---@param start Vector
---@param endPoint Vector
---@param collisionRep number
---@param groupsMask number
---@return Trace
function Shared.TraceRay(start, endPoint, collisionRep, groupsMask) end

---@param start Vector
---@param endPoint Vector
---@param collisionRep number
---@return Trace
function Shared.TraceRay(start, endPoint, collisionRep) end

---@param sweepStart Vector
---@param sweepEnd Vector
---@param capsuleRadius number
---@param capsuleHeight number
---@param collisionRep number
---@return Trace
function Shared.TraceCapsule(sweepStart, sweepEnd, capsuleRadius, capsuleHeight, collisionRep) end

---@param sweepStart Vector
---@param sweepEnd Vector
---@param capsuleRadius number
---@param capsuleHeight number
---@param collisionRep number
---@param groupsMask number
---@return Trace
function Shared.TraceCapsule(sweepStart, sweepEnd, capsuleRadius, capsuleHeight, collisionRep, groupsMask) end

---@param sweepStart Vector
---@param sweepEnd Vector
---@param capsuleRadius number
---@param capsuleHeight number
---@param collisionRep number
---@param groupsMask number
---@param filter function
---@return Trace
function Shared.TraceCapsule(sweepStart, sweepEnd, capsuleRadius, capsuleHeight, collisionRep, groupsMask, filter) end

---@param extents Vector
---@param start Vector
---@param endPos Vector
---@param collisionRep number
---@return Trace
function Shared.TraceBox(extents, start, endPos, collisionRep) end

---@param extents Vector
---@param start Vector
---@param endPos Vector
---@param collisionRep number
---@param groupsMask number
---@return Trace
function Shared.TraceBox(extents, start, endPos, collisionRep, groupsMask) end

---@param extents Vector
---@param start Vector
---@param endPos Vector
---@param collisionRep number
---@param groupsMask number
---@param filter function
---@return Trace
function Shared.TraceBox(extents, start, endPos, collisionRep, groupsMask, filter) end

---@param modelIndex number
---@return string
function Shared.GetModelName(modelIndex) end

---@param soundIndex number
---@return string
function Shared.GetSoundName(soundIndex) end

---@return number
function Shared.GetSystemTime() end

---@return number
function Shared.GetSystemTimeReal() end

---@param origin Vector
---@param radius number
---@return table
function Shared.GetEntitiesWithControllersInRange(origin, radius) end

---@param origin Vector
---@param radius number
---@param filter function
---@return table
function Shared.GetEntitiesWithControllersInRange(origin, radius, filter) end

---@param origin Vector
---@param radius number
---@return table
function Shared.GetEntitiesInRange(origin, radius) end

---@param origin Vector
---@param radius number
---@param filter function
---@return table
function Shared.GetEntitiesInRange(origin, radius, filter) end

---@param tag string
---@param origin Vector
---@param radius number
---@return table
function Shared.GetEntitiesWithTagInRange(tag, origin, radius) end

---@param tag string
---@param origin Vector
---@param radius number
---@param filter function
---@return table
function Shared.GetEntitiesWithTagInRange(tag, origin, radius, filter) end

---@param origin Vector
---@param radius number
---@return Entity
function Shared.GetNearestEntityInRange(origin, radius) end

---@param origin Vector
---@param radius number
---@param filter function
---@return Entity
function Shared.GetNearestEntityInRange(origin, radius, filter) end

---@param tag string
---@param origin Vector
---@param radius number
---@return Entity
function Shared.GetNearestEntityWithTagInRange(tag, origin, radius) end

---@param tag string
---@param origin Vector
---@param radius number
---@param filter function
---@return Entity
function Shared.GetNearestEntityWithTagInRange(tag, origin, radius, filter) end

---@param origin Vector
---@param entities table
---@return void
function Shared.SortEntitiesByDistance(origin, entities) end

--- Return the value for the given jit param value, or -1 if name invalid. Valid names are "maxmcode" and "maxtrace".
---@param paramName string
---@return number
function Shared.GetJitParam(paramName) end

--- Set the value given jit param.
---@param paramName string
---@param value number
---@return void
function Shared.SetJitParam(paramName, value) end

---@param webRoot string
---@return void
function Shared.SetWebRoot(webRoot) end

--- Sets color for all debug primitives subsequently.
---@param r number
---@param g number
---@param b number
---@param a number
---@return void
function Shared.DebugColor(r, g, b, a) end

--- Draws a line in the world from p0 to p1 for lifetime in seconds.
---@param p0 Vector
---@param p1 Vector
---@param lifetime number
---@return void
function Shared.DebugLine(p0, p1, lifetime) end

--- Removes all debug lines in the world.
---@return void
function Shared.ClearDebugLines() end

--- Draws a capsule in the world from sweepStart to sweepEnd with the specified radius and height for lifetime in seconds.
---@param sweepStart Vector
---@param sweepEnd Vector
---@param capsuleRadius number
---@param capsuleHeight number
---@param lifetime number
---@return void
function Shared.DebugCapsule(sweepStart, sweepEnd, capsuleRadius, capsuleHeight, lifetime) end

--- Draws a point in the world at p0 with a size for lifetime in seconds.
---@param p0 Vector
---@param size number
---@param lifetime number
---@return void
function Shared.DebugPoint(p0, size, lifetime) end

--- Draws the given string at world position p for lifetime in seconds.
---@param text string
---@param p Vector
---@param lifetime number
---@return void
function Shared.DebugText(text, p, lifetime) end

--- Internal engine-debugging help.
---@return void
function Shared.Debug_InitializeValues() end

--- Internal engine-debugging help.
---@param index number
---@param value number
---@return void
function Shared.Debug_SetNumber(index, value) end

--- Internal engine-debugging help.
---@param index number
---@return number
function Shared.Debug_GetNumber(index) end

--- Internal engine-debugging help.
---@param index number
---@param value string
---@return void
function Shared.Debug_SetString(index, value) end

--- Internal engine-debugging help.
---@param index number
---@return string
function Shared.Debug_GetString(index) end

--- Internal engine-debugging help.
---@param index number
---@param value Vector
---@return void
function Shared.Debug_SetVector(index, value) end

--- Internal engine-debugging help.
---@param index number
---@return Vector
function Shared.Debug_GetVector(index) end

--- Internal engine-debugging help.
---@return number
function Shared.Debug_GetNumValues() end

---@param name string
---@param value number
---@return void
function Shared.UpdateProfileStat(name, value) end

--- Converts a SteamID64 to a Spark-friendly SteamId32 format. The SteamID32 is a shorthand version of SteamID3 format.
---@param steamId64str string
---@return number
function Shared.ConvertSteamId64To32(steamId64str) end

--- Converts a Spark-friendly SteamID32 to a string representation of a SteamID64. The SteamID32 is a shorthand version of SteamID3 format.
---@param steamId32 number
---@return string
function Shared.ConvertSteamId32To64(steamId32) end

---@enum Camera.Type
Camera.Type = {
    Perspective = 0,
    Orthographic = 1,
}

---@enum VoiceChannel
VoiceChannel = {
    Invalid = 0,
    Global = 1,
    Position = 2,
    Entity = 3,
}