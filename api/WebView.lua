---@meta WebView

---@class WebView
---@overload fun(): WebView
WebView = {}

---@param url string
---@return void
function WebView:LoadUrl(url) end

---@return boolean
function WebView:GetUrlLoaded() end

---@param targetName string
---@return void
function WebView:SetTargetTexture(targetName) end

---@param x number
---@param y number
---@return void
function WebView:OnMouseMove(x, y) end

---@param button number
---@return void
function WebView:OnMouseDown(button) end

---@param button number
---@return void
function WebView:OnMouseUp(button) end

---@param vertPixels number
---@param horzPixels number
---@return void
function WebView:OnMouseWheel(vertPixels, horzPixels) end

---@param visible boolean
---@return void
function WebView:SetIsVisible(visible) end

---@param down boolean
---@return void
function WebView:OnEnter(down) end

---@param down boolean
---@return void
function WebView:OnBackSpace(down) end

---@param down boolean
---@return void
function WebView:OnSpace(down) end

---@param down boolean
---@return void
function WebView:OnEscape(down) end

---@param character number
---@return void
function WebView:OnSendCharacter(character) end

---@param enable boolean
---@return void
function WebView:SetGreenScreen(enable) end

---@param callback function
---@return void
function WebView:HookJSAlert(callback) end

---@param jsScript string
---@return void
function WebView:ExecuteJS(jsScript) end

--- Call to force a redraw of the web view texture. Don't spam this...
---@return void
function WebView:RefreshTexture() end
