---@meta GUI
---GUI.json

---@class GUI
GUI = {}
--- Returns the number of GUIItems currently in the system.
---@return number
function GUI.GetNumItems() end

--- Returns the number of GUIItems rendered in the last frame.
---@return number
function GUI.GetNumItemsRenderedLastFrame() end

--- Prints information about all the GUIItems currently in the system.
function GUI.PrintItemInfoToLog() end

--- Returns a newly created GUIItem.
---@return GUIItem
function GUI.CreateItem() end

---@param fontName string
---@param text string
---@return Vector
function GUI.CalculateTextSize(fontName, text) end

---@param fontName string
---@param text string
---@return boolean
function GUI.GetCanFontRenderString(fontName, text) end

--- Another access of Log_Message (exactly the same as Shared.Message, but this is accessible within GUIView VMs.
---@param message string
function GUI.Message(message) end

--- Destroy the passed in GUIItem.
---@param item GUIItem
function GUI.DestroyItem(item) end

--- Set the size of the virtual screen this system is rendering into. This should only be used with GUIs rendering into GUIViews.
---@param xSize number
---@param ySize number
function GUI.SetSize(xSize, ySize) end

--- Gathers all the visible GUIItems under the given coordinates that have the given mask enabled, and returns them sorted through the "itemsOut" array.  Items are sorted top-down, meaning the item at index 0 is the top-most item.  If startItem is provided, the traversal will only include startItem and its descendants, otherwise it will include all GUIItems.
---@param itemsOut GUIItemArray
---@param x number
---@param y number
---@param mask GUIItem.Options
function GUI.GetInteractionsUnderPoint(itemsOut, x, y, mask) end

--- Gathers all the visible GUIItems under the given coordinates that have the given mask enabled, and returns them sorted through the "itemsOut" array.  Items are sorted top-down, meaning the item at index 0 is the top-most item.  If startItem is provided, the traversal will only include startItem and its descendants, otherwise it will include all GUIItems.
---@param itemsOut GUIItemArray
---@param x number
---@param y number
---@param mask GUIItem.Options
---@param startItem GUIItem
function GUI.GetInteractionsUnderPoint(itemsOut, x, y, mask, startItem) end

--- Gathers all the visible GUIItems that have the given mask enabled, and returns them sorted through the "itemsOut" array.  Items are sorted top-down, meaning the item at index 0 is the top-most item.  If startItem is provided, the traversal will only include startItem and its descendants, otherwise it will include all GUIItems.
---@param itemsOut GUIItemArray
---@param mask GUIItem.Options
function GUI.GetInteractions(itemsOut, mask) end

--- Gathers all the visible GUIItems that have the given mask enabled, and returns them sorted through the "itemsOut" array.  Items are sorted top-down, meaning the item at index 0 is the top-most item.  If startItem is provided, the traversal will only include startItem and its descendants, otherwise it will include all GUIItems.
---@param itemsOut GUIItemArray
---@param mask GUIItem.Options
---@param startItem GUIItem
function GUI.GetInteractions(itemsOut, mask, startItem) end

--- Populates the GUIItemArray with a list of all the GUIItems at the root level (have no parents).
---@param itemsOut GUIItemArray
function GUI.GetRootItems(itemsOut) end

---@param text string
---@return wstring
function GUI.ConvertUTF8StringToWideString(text) end

---@param text wstring
---@return string
function GUI.ConvertWideStringToUTF8String(text) end
