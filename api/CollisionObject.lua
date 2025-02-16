---@meta CollisionObject

---@class CollisionObject
CollisionObject = {}

--- Initializes the collision object as a capsule. The height is the height of the cylindrical part of the capsule.
---@param radius number
---@param height number
---@param coords Coords
---@param allowTrigger boolean
---@return boolean
function CollisionObject:SetupCapsule(radius, height, coords, allowTrigger) end

--- Initializes the collision object as a cylinder.
---@param radius number
---@param height number
---@param coords Coords
---@param allowTrigger boolean
---@return boolean
function CollisionObject:SetupCylinder(radius, height, coords, allowTrigger) end

--- Initializes the collision object as a sphere.
---@param radius number
---@param coords Coords
---@param allowTrigger boolean
---@return boolean
function CollisionObject:SetupSphere(radius, coords, allowTrigger) end

--- Initializes the collision object as a box. The extents are half extents meaning half the width, etc.
---@param extents Vector
---@param coords Coords
---@param allowTrigger boolean
---@return boolean
function CollisionObject:SetupBox(extents, coords, allowTrigger) end

--- Sets the type of physics that's applied to the object.
---@param physicsType CollisionObject.PhysicsType
function CollisionObject:SetPhysicsType(physicsType) end

--- Gets the type of physics that's applied to the object.
---@return CollisionObject.PhysicsType
function CollisionObject:GetPhysicsType() end

--- Sets the collision rep to be used for physical representation of the object.
---@param physicsCollisionRep number
function CollisionObject:SetPhysicsCollisionRep(physicsCollisionRep) end

--- Removes the specified collision representation from the object.
---@param collisionRep number
function CollisionObject:RemoveCollisionRep(collisionRep) end

--- Sets the collision rep to be used when this object acts as a trigger.
---@param physicsCollisionRep number
function CollisionObject:SetTriggerCollisionRep(physicsCollisionRep) end

--- Sets the collision rep to be used when testing this object against triggers.
---@param physicsCollisionRep number
function CollisionObject:SetTriggeringCollisionRep(physicsCollisionRep) end

--- Sets the object to world space transformation for the object.
---@param coords Coords
---@return boolean
function CollisionObject:SetCoordsInternal(coords) end

--- Returns the object to world space transformation for the object.
---@return Coords
function CollisionObject:GetCoords() end

--- Sets the group that the object belongs to. The group is a number between 0 and 31 which can be used to filter the object during certain operations (like sweeping capsules).
---@param group number
function CollisionObject:SetGroup(group) end

--- Sets the mask of groups that this object should NOT collide with.
---@param groupFilterMask number
function CollisionObject:SetGroupFilterMask(groupFilterMask) end

--- Returns the group that the object belongs to. The group is a number between 0 and 31 which can be used to filter the object during certain operations (like sweeping capsules).
---@return number
function CollisionObject:GetGroup() end

--- Returns the mask of groups that this object should NOT collide with.
---@return number
function CollisionObject:GetGroupFilterMask() end

--- Sets the translation of the object.
---@param position Vector
---@return boolean
function CollisionObject:SetPositionInternal(position) end

--- Sets the translation of the object. The second argument toggles triggering.
---@param position Vector
---@param allowTrigger boolean
---@return boolean
function CollisionObject:SetPositionInternal(position, allowTrigger) end

--- Returns the translation of the object.
---@return Vector
function CollisionObject:GetPosition() end

--- Enables or disables the affects of gravity on the physics object.
---@param gravityEnabled boolean
function CollisionObject:SetGravityEnabled(gravityEnabled) end

--- Returns true if gravity is enabled for the physics object.
---@return boolean
function CollisionObject:GetGravityEnabled() end

--- Sets the restitution material setting for the body.
---@param restitution number
function CollisionObject:SetRestitution(restitution) end

--- Returns the restitution material setting for the body.
---@return number
function CollisionObject:GetRestitution() end

--- Sets the linear damping for the body. This is a way to simulate air resistance. Zero represents no damping while higher values represent more damping.
---@param damping number
function CollisionObject:SetLinearDamping(damping) end

--- Returns the linear damping for the body.
---@return number
function CollisionObject:GetLinearDamping() end

--- Sets the linear velocity for the body. In general, the velocity should only be set to initialize the body.
---@param velocity Vector
function CollisionObject:SetLinearVelocity(velocity) end

--- Returns the linear velocity for the body.
---@return Vector
function CollisionObject:GetLinearVelocity() end

--- Sets the angular velocity for the body. In general, the velocity should only be set to initialize the body.
---@param velocity Vector
function CollisionObject:SetAngularVelocity(velocity) end

--- Returns the angular velocity for the body.
---@return Vector
function CollisionObject:GetAngularVelocity() end

--- Enabled or disables continuous collision detection for this body. If enabled, all collisions will be reported for this body even if it "tunnels" through a wall during a physics step. By default CCD is disabled.
---@param ccdEnabled boolean
function CollisionObject:SetCCDEnabled(ccdEnabled) end

--- Adds an impulse at the specified world space position.
---@param position Vector
---@param impulse Vector
function CollisionObject:AddImpulse(position, impulse) end

--- Sets whether or not the collision object will act as a trigger. If the object is acting as a trigger, then when another object moves onto it a trigger event will be generated.
---@param triggerEnabled boolean
function CollisionObject:SetTriggerEnabled(triggerEnabled) end

--- Returns whether or not the collision object will act as a trigger.
---@return boolean
function CollisionObject:GetTriggerEnabled() end

--- Returns whether or not the movement of this object into or out of a trigger will generate an event.
---@param triggeringEnabled boolean
function CollisionObject:SetTriggeringEnabled(triggeringEnabled) end

--- Returns whether or not the movement of this object into or out of a trigger will generate an event.
---@return boolean
function CollisionObject:GetTriggeringEnabled() end

--- Sets whether collisions are enabled with this object. If collisions are disabled, all sweep operations will pass through the object.
---@param collisionEnabled boolean
function CollisionObject:SetCollisionEnabled(collisionEnabled) end

--- Returns whether collisions are enabled with this object.
---@return boolean
function CollisionObject:GetCollisionEnabled() end

--- Returns true if the body contains the specified point. For non-closed bodies no points will be contained.
---@param point Vector
---@param collisionRep number
---@return boolean
function CollisionObject:GetContainsPoint(point, collisionRep) end

--- Gets the bone coords based on the current state of the collision object.
---@param boneCoords CoordsArray
function CollisionObject:GetBoneCoords(boneCoords) end

--- Updates the collision object based on the specified bone coords.
---@param coords Coords
---@param boneCoords CoordsArray
---@return boolean
function CollisionObject:SetBoneCoordsInternal(coords, boneCoords) end

--- Sets linear and angular velocities of all bodies. The size of the velocity array must be equal to number of bones + 1. The first element of the array specifies velocity of bodies not attached to any bone.
---@param boneVelocities VelocityArray
function CollisionObject:SetBoneVelocities(boneVelocities) end

--- Maps an entity to this CollisionObject.
---@param entity Entity
function CollisionObject:SetEntity(entity) end

--- Returns the entity mapped to this CollisionObject.
---@return Entity
function CollisionObject:GetEntity() end

--- Moves the object by the specified offset. if the object collides with something the method returns the fraction of the offset that it was moved and the surface normal in the sweep in the Trace object.
---@param offset Vector
---@param moveCollisionRep number
---@param collisionRep number
---@param groupsMask number
---@return Trace
function CollisionObject:Move(offset, moveCollisionRep, collisionRep, groupsMask) end

--- Performs a sweep without actually moving the object.
---@param offset Vector
---@param traceCollisionRep number
---@param collisionRep number
---@param groupsMask number
---@return Trace
function CollisionObject:Trace(offset, traceCollisionRep, collisionRep, groupsMask) end

--- Tests for collision with objects in the scene. Returns true if there is a collision.
---@param testCollisionRep number
---@param collisionRep number
---@param groupsMask number
---@return boolean
function CollisionObject:Test(testCollisionRep, collisionRep, groupsMask) end

CollisionObject.None = "CollisionObject.None"
CollisionObject.Static = "CollisionObject.Static"
CollisionObject.Dynamic = "CollisionObject.Dynamic"
CollisionObject.Kinematic = "CollisionObject.Kinematic"

---@enum CollisionObject.PhysicsType
CollisionObject.PhysicsType = {
    None = CollisionObject.None ,
    Static = CollisionObject.Static,
    Dynamic = CollisionObject.Dynamic,
    Kinematic = CollisionObject.Kinematic
}