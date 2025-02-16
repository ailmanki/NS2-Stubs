---@meta Model
--- Model.json

---@class Model
Model = {}

---@return string
function Model:GetFileName() end

---@param name string
---@return number
function Model:GetSequenceIndex(name) end

---@param poses PosesArray
function Model:GetReferencePose(poses) end

---@param sequenceIndex number
---@param time number
---@param poses PosesArray
function Model:AccumulateSequenceNoParams(sequenceIndex, time, poses) end

---@param sequenceIndex number
---@param time number
---@param poseParams PoseParams
---@param poses PosesArray
function Model:AccumulateSequence(sequenceIndex, time, poseParams, poses) end

---@param sequenceIndex number
---@return boolean
function Model:GetIsLooping(sequenceIndex) end

---@param poses PosesArray
---@param boneCoords CoordsArray
function Model:GetBoneCoords(poses, boneCoords) end

---@param sequenceIndex number
---@return number
function Model:GetSequenceLength(sequenceIndex) end

---@param sequenceName string
---@return number
function Model:GetSequenceLength(sequenceName) end

---@param sequenceIndex number
---@return string
function Model:GetSequenceName(sequenceIndex) end

---@return number
function Model:GetNumSequences() end

---@param name string
---@return number
function Model:GetPoseParamIndex(name) end

---@param index number
---@return string
function Model:GetPoseParamName(index) end

---@return number
function Model:GetNumPoseParameters() end

---@return Vector
function Model:GetOrigin() end

---@return Vector
function Model:GetExtentsMin() end

---@return Vector
function Model:GetExtentsMax() end

---@param boneCoords CoordsArray
---@param min Vector
---@param max Vector
function Model:GetExtentsForPose(boneCoords, min, max) end

---@return boolean
function Model:GetHasHitBoxes() end

---@param start Vector
---@param endPt Vector
---@param boneCoords CoordsArray
---@return Trace
function Model:TraceRay(start, endPt, boneCoords) end

---@param attachPointIndex number
---@return boolean
function Model:GetAttachPointExists(attachPointIndex) end

---@param attachPointIndex number
---@param boneCoords CoordsArray
---@return boolean
function Model:GetAttachPointBoneExists(attachPointIndex, boneCoords) end

---@param attachPointName string
---@return number
function Model:GetAttachPointIndex(attachPointName) end

---@param attachPointIndex number
---@param boneCoords CoordsArray
---@return Coords
function Model:GetAttachPointCoords(attachPointIndex, boneCoords) end

---@param mass number
function Model:SetModelMass(mass) end

---@return number
function Model:GetModelMass() end

---@return number
function Model:GetNumCameras() end

---@param cameraIndex number
---@return string
function Model:GetCameraName(cameraIndex) end

---@param tagIndex number
---@return string
function Model:GetTagName(tagIndex) end

---@param cameraIndex number
---@param boneCoords CoordsArray
---@return Camera
function Model:GetCamera(cameraIndex, boneCoords) end

---@param sequenceIndex number
---@param poseParams PoseParams
---@param startTime number
---@param endTime number
---@param passedTags table
function Model:GetTagsPassed(sequenceIndex, poseParams, startTime, endTime, passedTags) end

--- Provides a array of material filenames for this model. The indicies in the table are the indexes of the materials in this model.
---@param materials table<integer, string>
function Model:GetIndexedMaterials(materials) end

---@class PosesArray
PosesArray = {}

---@return PosesArray
function PosesArray.new() end

---@class PoseParams
PoseParams = {}

---@return PoseParams
function PoseParams.new() end

---@param index number
---@param value number
function PoseParams:Set(index, value) end

---@param index number
---@return number
function PoseParams:Get(index) end

---@class PassedTags
PassedTags = {}

---@return PassedTags
function PassedTags.new() end

---@param index number
---@return number
function PassedTags:Get(index) end

---@return number
function PassedTags:GetCount() end

function PassedTags:Clear() end

---@param poses1 PosesArray
---@param poses2 PosesArray
---@param fraction number
function Model.GetBlendedPoses(poses1, poses2, fraction) end

Model.invalidSequence = nil