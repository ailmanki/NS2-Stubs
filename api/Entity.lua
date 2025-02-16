---@meta Entity
--- Entity.json

---@class Entity
Entity = {}

--- How entities are propagated.
--- Default = use include/exlude masks first, then distance.
--- Callback = as default, but if inside distance do a final callback to OnGetIsRelevant() (note: expensive)
--- Always = always relevant
--- Never = never relevant
--- PlayerOwner = only relevant to the player owning it
---@return number @Returns the id of this entity.
function Entity:GetId() end

---@return string @Get class name used with LinkClassToMap.
function Entity:GetClassName() end

---@return string @Get map name used with LinkClassToMap.
function Entity:GetMapName() end

---@deprecated This API is deprecated. Use Entity:AddTimedCallback() instead.
---@param nextThink number
---@return void
function Entity:SetNextThink(nextThink) end

---@param updates boolean @Determines if OnUpdate() will be called. Defaults to false.
---@return void
function Entity:SetUpdates(updates) end

---@param updates boolean @Determines if OnUpdate() will be called and with what time interval in seconds. Defaults to false.
---@param updateRate number
---@return void
function Entity:SetUpdates(updates, updateRate) end

---@param updateRate number @Sets the time interval in seconds for the OnUpdate calls. Defaults to 0 which cause OnUpdate when enabled is called on every world update
---@return void
function Entity:SetUpdateRate(updateRate) end

---@param propagate Entity.Propagate @Sets how the server determines whether or not the entity should be propagated to a client.
---@return void
function Entity:SetPropagate(propagate) end

---@param relevancyDistance number @Sets a maximum distance at which the entity will be relevant. Can be infinite to disable the test.
---@return void
function Entity:SetRelevancyDistance(relevancyDistance) end

--- Allows an origin and range offset to be made when this entity checks other entities for relevancy.
--- The position that relevancy is calculated from is adjusted by originOffset, and the required range is adjusted by the rangeOffset.
--- This allows overhead views to be used more effectively
---@param originOffset Vector
---@param rangeOffset number
---@return void
function Entity:ConfigureRelevancy(originOffset, rangeOffset) end

---@param includeMask number @Sets a bit mask which is used to determine if the entity is relevant to a client. The entity is relevant if (entity.includeMask & client.includeMask)!= 0.
---@return void
function Entity:SetIncludeRelevancyMask(includeMask) end

---@return number @Gets the include relevancy mask
function Entity:GetIncludeRelevancyMask() end

---@param excludeMask number @Sets a bit mask which is used to determine if the entity is relevant to a client. The entity is not relevant if (entity.excludeMask & client.excludeMask) == 0.
---@return void
function Entity:SetExcludeRelevancyMask(excludeMask) end

---@return number @Gets the exclude relevancy mask
function Entity:GetExcludeRelevancyMask() end

---@param lagCompensated boolean @Sets whether or not the entity has lag compensation applied on the server. When lag compensation is enabled, the state of the entity will be "rolled back" when processing client commands.
---@return void
function Entity:SetLagCompensated(lagCompensated) end

---@return boolean @Returns whether or not the entity should have lag compensation applied on the server.
function Entity:GetLagCompensated() end

---@param state boolean @Set whether or not the model should take any simple physics objects attached when calculating the bounding box.  False by default.
---@return void
function Entity:SetUsesSimplePhysics(state) end

---@param modelIndex number @Sets the model index used to calculate the bounding box for this entity. Set to <= 0 to remove bounding box.
---@return void
function Entity:SetPhysicsBoundingBox(modelIndex) end

--- Update the physics bounding box to reflect the current origins. If the entity has no physics bounding box, does nothing.
---@return void
function Entity:UpdatePhysicsBoundingBox() end

---@param entity Entity @Sets the parent of this entity.
---@return void
function Entity:SetParent(entity) end

---@return Entity @Returns the parent of this entity.
function Entity:GetParent() end

---@return number @Returns the Id of the parent of this entity.
function Entity:GetParentId() end

---@return number @Returns the number of children this Entity has.
function Entity:GetNumChildren() end

---@param atIndex number
---@return Entity @Returns the child of this Entity at the passed in index. The index goes from 0 to GetNumChildren() - 1.
function Entity:GetChildAtIndex(atIndex) end

---@param attachPoint string @Sets the point on the parent that the entity is attached to.
---@return void
function Entity:SetAttachPoint(attachPoint) end

---@return number @Returns the index of the point on the parent that the entity is attached to.
function Entity:GetAttachPoint() end

---@return Coords @Gets the object to world coordinate transform for this entity.
function Entity:GetCoords() end

---@param coords Coords @Sets the object to world coordinate transeform for this entity.
---@return void
function Entity:SetCoords(coords) end

--- Adds a callback that will be called after the time specified callInterval has passed.
--- The callback will be called with itself and the time passed since the last call (or since the callback
--- was added).
--- Using zero as the callInterval is allowed, and will cause it to be called every frame/update interval.
--- Callbacks will be called BEFORE any OnUpdate() calls.
--- This method should not be used directly - the Entity.lua:AddTimedCallback should be used instead, as it
--- filters out any adds when in the Predict world.
--- Returning a number will cause the callInterval to change.
--- Returning true will reuse the current callInterval.
--- Return false will remove the callback.
---@param callback fun(self: Entity, deltaTime: number): number|boolean|void
---@param callInterval number
---@param early boolean
---@return void
function Entity:AddTimedCallbackActual(callback, callInterval, early) end

--- Called when entity is created either on server or client.
---@return void
function Entity:OnCreate() end

--- Called after an entity has been created on the server or client and the initial values have been set.
---@return void
function Entity:OnInitialized() end

--- Called when the entity is destroyed.
---@return void
function Entity:OnDestroy() end

--- Called when SetOrigin() is called with out of range or invalid values.
---@return void
function Entity:OnInvalidOrigin() end

---@return boolean @Returns whether or not the entity has been destroyed.
function Entity:GetIsDestroyed() end

---@param deltaTime number @Called to update the entity.
---@return void
function Entity:OnUpdate(deltaTime) end

---@deprecated This is deprecated. Use Entity:AddTimedCallback() instead.
---@return void
function Entity:OnThink() end

---@return void @Disables the Entity:OnPreUpdate() call on this entity.
function Entity:DisableOnPreUpdate() end

---@return void @Disables the Entity:OnUpdatePhysics() call on this entity.
function Entity:DisableOnUpdatePhysics() end

---@return void @Disables the Entity:OnPreparePhysics() call on this entity.
function Entity:DisableOnPreparePhysics() end

---@return void @Disables the Entity:OnFinishPhysics() call on this entity.
function Entity:DisableOnFinishPhysics() end

---@return void @Disables the Entity:OnUpdateRender() call on this entity.
function Entity:DisableOnUpdateRender() end

---@param input Move @Called when a Move should be processed. These moves are processed on the Server when a Client sends them or on the Client as part of prediction.
---@return void
function Entity:OnProcessMove(input) end

---@param deltaTime number @Called when this entity is being spectated by another Client instead of Entity:OnProcessMove() being called.
---@return void
function Entity:OnProcessSpectate(deltaTime) end

---@param player Entity
---@return boolean @Called to determine if this entity is relevant to the passed in player entity.
function Entity:OnGetIsRelevant(player) end

---@param oldParent Entity
---@param newParent Entity
---@return void @Called when the parent changes on this entity.
function Entity:OnParentChanged(oldParent, newParent) end


--- Called on the Client to allow input to be modified before being processed locally or sent to the Server.
---@param input Move
---@return Move
function Entity:OverrideInput(input) end

--- Returns the index for the attachment point with the specified name. If there is no attachment point with that name in the entity, the method returns -1.
---@param attachPointName string
---@return number
function Entity:GetAttachPointIndex(attachPointName) end

---@param attachPointIndex number
---@return Coords
function Entity:GetAttachPointCoords(attachPointIndex) end

--- Gets the attachment point to world space coordinate frame for the specified attachment point. Sets the origin of the object's coordinate frame relative to its parent. Will call Entity:OnInvalidOrigin() if a bad origin is passed in.
---@param origin Vector
---@return void
function Entity:SetOrigin(origin) end

--- Returns the origin of the object's coordinate frame relative to its parent.
---@return Vector
function Entity:GetOrigin() end

--- Returns the origin of the object's coordinate frame in world coordinates.
---@return Vector
function Entity:GetWorldOrigin() end

--- Sets whether or not the entity is visible. It's generally up to derived classes to check if an entity is visible before rendering.
---@param visible boolean
---@return void
function Entity:SetIsVisible(visible) end

--- Returns whether or not the entity is visible. It's generally up to derived classes to check if an entity is visible before rendering.
---@return boolean
function Entity:GetIsVisible() end

--- Called when entities are placed in map.
---@return void
function Entity:SetMapEntity() end

--- Can be used for not deleting entities on death and resetting them on round reset.
---@return boolean
function Entity:GetIsMapEntity() end

--- Set if entity can be culled by physics culler (client side).
---@param cullable boolean
---@return void
function Entity:SetPhysicsCullable(cullable) end

--- Return if entity can be culled by physics culler (client side)
---@return boolean
function Entity:GetIsPhysicsCullable() end

--- Returns the angles of the object's coordinate frame relative to the world.
---@return Angles
function Entity:GetAngles() end

--- Sets the angles of the object's coordinate frame relative to the world. Will generate an error if bad angles are passed in.
---@param angles Angles
---@return void
function Entity:SetAngles(angles) end

--- Returns distance between self and specified entity. Used to avoid excess Vector() creation in script. Uses origin.
---@param entity Entity
---@return number
function Entity:GetDistanceToEntity(entity) end

--- Same as Entity:GetDistance() but ignores y.
---@param entity Entity
---@return number
function Entity:GetDistanceSquaredToEntity(entity) end

---@param entity Entity
---@return number
function Entity:GetDistanceXZ(entity) end

--- Returns distances between self and the specified origin.
---@param origin Vector
---@return number
function Entity:GetDistanceToVector(origin) end

--- Returns distance between self and specified origin squared.
---@param origin Vector
---@return number
function Entity:GetDistanceSquaredToVector(origin) end

--- Play sound at entities' location.
---@param soundEventName string
---@return void
function Entity:PlaySound(soundEventName) end

--- Play sound at entities' location with the specified volume.
---@param soundEventName string
---@param volume number
---@return void
function Entity:PlaySoundAtVolume(soundEventName, volume) end

--- Stops the specified sound previously played using Entity:PlaySound().
---@param soundEventName string
---@return void
function Entity:StopSound(soundEventName) end

--- Add a watch on the given fieldname. When it is changed, the given callback will be invoked.
--- If the callback returns non-true, the fieldwatcher will be removed.
--- Note: The same transition may be reported multiple times!
---@param fieldName string
---@param callback fun(self: Entity, value: any): boolean|void
---@return void
function Entity:AddFieldWatcher(fieldName, callback) end


---@enum Entity.Propagate
Entity.Propagate = {
    Default = "Entity.Propagate_Default",
    Always = "Entity.Propagate_Always",
    Never = "Entity.Propagate_Never",
    PlayerOwner = "Entity.Propagate_PlayerOwner",
    Callback = "Entity.Propagate_Callback",
}

---@constant number
Entity.invalidId = nil -- Needs a value if it's a real constant.  If it's meant to be "undefined", you can remove this.
