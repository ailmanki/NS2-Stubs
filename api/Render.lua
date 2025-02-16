---@meta RenderFogSphereVolume
--- Render.json




---@enum RenderCamera.Type
RenderCamera.Type = {
    Type_Orthographic = "RenderCamera.Type_Orthographic",
    Type_Perspective = "RenderCamera.Type_Perspective"
}

---@enum RenderCamera.CullingMode
RenderCamera.CullingMode = {
    CullingMode_None = "RenderCamera.CullingMode_None",
    CullingMode_Frustum = "RenderCamera.CullingMode_Frustum",
    CullingMode_Occlusion = "RenderCamera.CullingMode_Occlusion"
}