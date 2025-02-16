---@meta RenderScene
--- Client.json

---@class RenderScene
RenderScene = {}

---@enum RenderScene.Zone
RenderScene.Zone = {}

-- from Render.json
RenderScene.Zone_Default = "RenderScene.Zone_Default"
RenderScene.Zone_ViewModel = "RenderScene.Zone_ViewModel"
RenderScene.Zone_SkyBox = "RenderScene.Zone_SkyBox"

---@enum RenderScene.Zone #from Render.json
RenderScene.Zone = {
    Zone_Default = RenderScene.Zone_Default,
    Zone_ViewModel = RenderScene.Zone_ViewModel,
    Zone_SkyBox = RenderScene.Zone_SkyBox
}