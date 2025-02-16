---@meta ModServices
--- ModServices.json

--- Returns the description of the mod with the specified mod Id.
---@param modId number
---@return string
function ModServices.GetModDescription(modId) end

--- Returns the current state of a mod with the specified steam mod id.
---@param modId number
---@return string
function ModServices.GetModState(modId) end

--- Returns true if tracked internally by the mod system.
---@param modId number
---@return boolean
function ModServices.GetIsModTracked(modId) end

--- Returns the amount of the mod that has been downloaded. Returns true if currently downloading, the number of bytes downloaded, the number of bytes total, the retry count and an "other status" string.
---@param modId number
---@return boolean
function ModServices.GetModDownloadProgress(modId) end

--- Returns the mod dependencies of a mod as a list of mod ids.
---@param modId number
---@return table
function ModServices.GetModDependencies(modId) end

--- Returns a list of cached versions of this mod that can be mounted with a id:version mod string.
---@param modId number
---@return table
function ModServices.GetModCachedVersions(modId) end

--- Returns the shared hotfix mod list id.
---@return number
function ModServices.GetHotfixListModId() end

--- Returns true if the mod with the specified id is an internal mod and shouldn't be shown in mod lists.
---@param modId number
---@return boolean
function ModServices.GetIsInternalMod(modId) end

--- Returns what the current installed steam version of the specified mod is.
---@param modId number
---@return number
function ModServices.GetModSteamVersion(modId) end

--- Trigger update of all installed mods even if not subscribed, this has noe effect if update lockdown is in effect when connected to a server.
function ModServices.UpdateAllMods() end

--- Update the specified mod id if its installed, returns false if mod is not installed or mod update lockdown is stopping it.
---@param modId number
---@return boolean
function ModServices.UpdateMod(modId) end

--- Returns true if the specified mod id is blocked from updating this behaviour varies between the client and server.
---@param modId number
---@return boolean
function ModServices.GetIsModUpdateBlocked(modId) end

--- Returns a list of matching file paths in the specified mod, it doesn't need to be mounted. returns false if the mod is updating or has no cached local version
---@param modId number
---@param pattern string
---@param recursive boolean
---@param matchingFileTable table
---@return boolean
function ModServices.GetMatchingFileNamesInMod(modId, pattern, recursive, matchingFileTable) end

--- Sets the maximum number of retries a download of a mod from steam is attempted before trying mod backup server if one is provided by the server.
---@param attempts number
function ModServices.SetMaxSteamDownloadAttemps(attempts) end

--- Sets the timeout for mod downloaded from steam. The timeout can happen for either download progress getting stuck or download not starting.
---@param seconds number
function ModServices.SetSteamDownloadTimout(seconds) end

--- Sets the timeout for mod downloading from mod backup web servers.
---@param seconds number
function ModServices.SetBackupModServerDownloadTimout(seconds) end

--- Sets the timeout for mod info requests to steam.
---@param seconds number
function ModServices.SetModRequestTimeout(seconds) end