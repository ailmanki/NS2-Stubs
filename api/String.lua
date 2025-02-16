---@meta wstring

---@class wstring
wstring = {}

--- Returns a substring of the wstring.
---@param start number The starting index (inclusive).
---@param _end number The ending index (inclusive). Defaults to the end of the string.
---@return wstring # The substring.
function wstring:sub(start, _end) end

--- Returns the length of the wstring.
---@return number # The length of the string.
function wstring:length() end
