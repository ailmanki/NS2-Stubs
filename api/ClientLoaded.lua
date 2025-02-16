---@meta

---@class Client
Client = {}

--- Execute a console command.
---@param command string
function Shared.ConsoleCommand(command) end

--- Return (and reset) the flag that tracks if client side mods were disabled due to a build number increase.
---@return boolean
function Client.GetAndResetClientSideModsDisabled() end

--- Return the flag that tracks if the client's build number just increase.
---@return boolean
function Client.GetClientUpdated() end

--- Connect to a server with the passed in address and password. Use "" for the password if there is no password.
---@param serverAddress string
---@param password string
function Client.Connect(serverAddress, password) end

--- Connect to a server with the passed in address and password. Use "" for the password if there is no password.
---@param serverAddress string
---@param password string
---@param isTDserver boolean
function Client.Connect(serverAddress, password, isTDserver) end

--- Trigger request to Steamworks to generate a session authentication ticket.
function Client.GenerateSessionAuthTicket() end

--- Cancels and invalidates active session auth ticket
function Client.CancelSessionAuthTicket() end

--- Returns the X and Y position on the screen where the cursor is located.
---@return number
function Client.GetCursorPosScreen() end

--- Returns the X and Y normalized position on the screen where the cursor is located.
---@return number
function Client.GetCursorPos() end

--- Returns the width of the screen.
---@return number
function Client.GetScreenWidth() end

--- Returns the height of the screen.
---@return number
function Client.GetScreenHeight() end

--- Disconnects from the current server.
function Client.Disconnect() end

--- Returns the framerate.
---@return number
function Client.GetFrameRate() end

--- Returns the id of a locally installed mod. The id is an index into the installed mods array and can be used in the StartServer method. If the mod does not exist, the method will return -1.
---@param modName string
---@return number
function Client.GetLocalModId(modName) end

--- Restarts the main world. Best used to reset the main menu.
function Client.RestartMain() end

--- Starts a server based on the provided map name, server name, password, port, and max players. Use "" for password to disable the password.
---@param mapFileName string
---@param serverName string
---@param password string
---@param port number
---@param maxPlayers number
---@return boolean
function Client.StartServer(mapFileName, serverName, password, port, maxPlayers) end

--- Starts a server based on the provided map name, server name, password, port, and max players. Use "" for password to disable the password.
---@param mapFileName string
---@param serverName string
---@param password string
---@param port number
---@param maxPlayers number
---@param disableClientMods boolean
---@param hideServer boolean
---@return boolean
function Client.StartServer(mapFileName, serverName, password, port, maxPlayers, disableClientMods, hideServer) end

--- Starts a server playing on the given level with mods from modIds table mounted.
---@param modIds table
---@param mapFileName string
---@param serverName string
---@param password string
---@param port number
---@param maxPlayers number
---@param disableClientMods boolean
---@param hideServer boolean
---@return boolean
function Client.StartServer(modIds, mapFileName, serverName, password, port, maxPlayers, disableClientMods, hideServer) end

--- Returns the ping time of this Client to the server it is connected to.
---@return number
function Client.GetPing() end

--- Reloads the graphics device with the current settings.
function Client.ReloadGraphicsOptions() end

--- Reloads input mappings that are stored in the options file.
function Client.ReloadKeyOptions() end

--- Sets an option string that is saved to disk.
---@param name string
---@param value string
function Client.SetOptionString(name, value) end

--- Sets an option integer that is saved to disk.
---@param name string
---@param value number
function Client.SetOptionInteger(name, value) end

--- Sets an option 64 bit unsigned integer that is saved to disk.
---@param name string
---@param value number
function Client.SetOptionInteger64(name, value) end

--- Sets an option float that is saved to disk.
---@param name string
---@param value number
function Client.SetOptionFloat(name, value) end

--- Sets an option boolean that is saved to disk.
---@param name string
---@param value boolean
function Client.SetOptionBoolean(name, value) end

--- Returns the number of audio devices of the specified type. The type is Client.SoundDeviceType_Input or Client.SoundDeviceType_Output.
---@param deviceType Client.SoundDeviceType
---@return number
function Client.GetSoundDeviceCount(deviceType) end

--- Returns the name of the specified audio device.
---@param deviceType Client.SoundDeviceType
---@param id number
---@return string
function Client.GetSoundDeviceName(deviceType, id) end

--- Returns GUID of the specified audio device.
---@param deviceType Client.SoundDeviceType
---@param id number
---@return string
function Client.GetSoundDeviceGuid(deviceType, id) end

--- Returns the Id of the audio device matching the specified type and GUID. If no device is found, returns -1.
---@param deviceType Client.SoundDeviceType
---@param guid string
---@return number
function Client.FindSoundDeviceByGuid(deviceType, guid) end

--- Sets the active audio device.
---@param deviceType Client.SoundDeviceType
---@param id number
function Client.SetSoundDevice(deviceType, id) end

--- Returns the active audio device.
---@param deviceType Client.SoundDeviceType
---@return number
function Client.GetSoundDevice(deviceType) end

--- Returns true if the active audio device of the specified type has been successfully initialized.
---@param deviceType Client.SoundDeviceType
---@return boolean
function Client.GetIsSoundDeviceValid(deviceType) end

--- Sets the volume of the music. This value is between 0 and 1.
---@param volume number
function Client.SetMusicVolume(volume) end

--- Returns the volume of the music.
---@return number
function Client.GetMusicVolume() end

--- Sets the volume of the sound effects. This value is between 0 and 1.
---@param volume number
function Client.SetSoundVolume(volume) end

--- Sets the volume of the video sound. This value is between 0 and 1.
---@param volume number
function Client.SetVideoVolume(volume) end

--- Returns the volume of video sounds.
---@return number
function Client.GetVideoVolume() end

--- Returns the volume of the sound effects.
---@param volume number
function Client.SetVoiceVolume(volume) end

--- Set the recording gain (in dB).
---@param gain number
function Client.SetRecordingGain(gain) end

--- Returns the recording gain (in dB).
---@return number
function Client.GetRecordingVolume() end

--- Client game will manage one GraphicsCursor that can be displayed with this function. Pass in the x and y position in the cursor graphic to use as the "click" hot spot.
---@param fileName string
---@param xHotSpot number
---@param yHotSpot number
function Client.SetCursor(fileName, xHotSpot, yHotSpot) end

--- Returns the total number of servers in the server list.
---@return number
function Client.GetNumServers() end

--- Returns the name of the player for display purposes.
---@return string
function Client.GetUserName() end

--- Set the name of the player on Steam
---@param name string
function Client.SetUserName(name) end

--- Returns the steam ID of the player.
---@return number
function Client.GetSteamId() end

--- Returns true when steam id is on friends list.
---@param steamId number
---@return boolean
function Client.GetIsSteamFriend(steamId) end

--- Returns the country code of the local player.
---@return string
function Client.GetCountryCode() end

--- Tells the game to refresh the list of servers.
function Client.RebuildServerList() end

--- Tells the game to stop any refresh of server list.
function Client.CancelRebuildServerList() end

--- Returns true if the server list is completely refreshed.
---@return boolean
function Client.GetServerListRefreshed() end

--- Sets how sensitive the mouse is to movement. 1.0 is the default. Does not save the option.
---@param sensitivity number
function Client.SetMouseSensitivity(sensitivity) end

--- Returns how sensitive the mouse is to movement.
---@return number
function Client.GetMouseSensitivity() end

--- Returns a string representation of the passed in keyCode. See InputKey for more.
---@param keyCode number
---@return string
function Client.ConvertKeyCodeToString(keyCode) end

--- Returns the name of the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return string
function Client.GetServerName(serverIndex) end

--- Refreshes data about the server at the provided index. Index is 0 based.
---@param serverIndex number
function Client.RefreshServer(serverIndex) end

--- Refreshes data about the server at the provided index. Calls the provided callback with a table of the data when complete. Index is 0 based.
---@param serverIndex number
---@param callback function
function Client.RefreshServer(serverIndex, callback) end

--- Refreshes data about the server at the provided address. Calls the provided callback with a table of the data when complete. Index is 0 based.
---@param serverAddress string
---@param callback function
function Client.RefreshServer(serverAddress, callback) end

--- Issues a request for more details about the server at the provided index. Index is 0 based.
---@param serverIndex number
function Client.RequestServerDetails(serverIndex) end

--- Returns true if the server at the provided index is on the local area network. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerIsLAN(serverIndex) end

--- Returns the name of map the server at the provided index is using. Index is 0 based.
---@param serverIndex number
---@return string
function Client.GetServerMapName(serverIndex) end

--- Returns the name of the game mode the server at the provided index is using. Index is 0 based.
---@param serverIndex number
---@return string
function Client.GetServerGameMode(serverIndex) end

--- Returns the number of players actively playing on the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerNumPlayers(serverIndex) end

--- Returns the maximum number of player that the server at the provided index can support. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerMaxPlayers(serverIndex) end

--- Returns the number of spectators actively spectating on the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerNumSpectators(serverIndex) end

--- Returns the number of reserved slots available on the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerNumReservedSlots(serverIndex) end

--- Returns the average player skill of given server
---@param serverIndex number
---@return number
function Client.GetServerAvgPlayerSkill(serverIndex) end

--- Returns true if the server at the provided index can be used for quick play . Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerIsQuickPlayReady(serverIndex) end

--- Returns the maximum number of spectators that the server at the provided index can support. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerMaxSpectators(serverIndex) end

---@param serverIndex number
---@return number
function Client.GetServerBotPlayers(serverIndex) end

--- Returns the ping time from this Client to the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerPing(serverIndex) end

--- Returns the address of the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return string
function Client.GetServerAddress(serverIndex) end

--- Returns true if the server at the provided index requires a password. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerRequiresPassword(serverIndex) end

--- Returns true if the server at the provided index has the tag passed in. Index is 0 based.
---@param serverIndex number
---@param name string
---@return boolean
function Client.GetServerHasTag(serverIndex, name) end

---@param serverIndex number
---@param tags table
function Client.GetServerTags(serverIndex, tags) end

--- Returns the tick rate of the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerTickRate(serverIndex) end

--- Returns the current (last 30 sec) performance score (-99 to 100) for the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerCurrentPerformanceScore(serverIndex) end

--- Returns the historically based performance score (-99 to 100, with >0 being ok) for the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceScore(serverIndex) end

--- Returns the quality of the historical performance score (0-100, with 0 being useless and 100 being fully trustworthy) for the server at the provided index. Index is 0 based.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceQuality(serverIndex) end

--- Returns the current set max tickrate for given server.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceTickrate(serverIndex) end

--- Returns the current set max moverate for given server.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceMoverate(serverIndex) end

--- Returns the currently set interpolation time frame of the given server in ms.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceInterpMs(serverIndex) end

--- Returns the currently set sendrate of the given server in ms.
---@param serverIndex number
---@return number
function Client.GetServerPerformanceSendrate(serverIndex) end

--- Returns true if the server at the provided index contains any steam friends of the running client. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerContainsFriends(serverIndex) end

--- Returns true if the server at the provided index has any modifications installed. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerIsModded(serverIndex) end

--- Returns true if the server at the provided index contains has player rank updating enabled. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerIsRanked(serverIndex) end

--- Requests details about the mods with the provided Id. The passed in callback will be called when the details are retrieved. The arguments to this callback are modId, title, and description. This does not trigger a mod to be downloaded.
---@param modIds table
---@param callback function
function Client.GetModDetails(modIds, callback) end

--- Returns true if the server at the provided index is secured. Index is 0 based.
---@param serverIndex number
---@return boolean
function Client.GetServerIsSecure(serverIndex) end

--- Returns the value associated with the specified key on the server. If the key doesn't exist or hasn't been retrieved from the server yet, the method returns "".
---@param serverIndex number
---@param key string
---@return string
function Client.GetServerKeyValue(serverIndex, key) end

--- Returns information about the players on the server at the provided index. Index is 0 based.
---@param serverIndex number
---@param players table
function Client.GetServerPlayerDetails(serverIndex, players) end

--- Sets whether or not the mouse cursor is "captured". When the mouse is captured the cursor will be hidden and the mouse will be forced to the center of the window.
---@param mouseVisible boolean
function Client.SetMouseVisible(mouseVisible) end

--- Sets whether or not the mouse is restricted to the client area of the window.
---@param mouseClipped boolean
function Client.SetMouseClipped(mouseClipped) end

--- Causes the client to close the window and exit.
function Client.Exit() end

--- Returns true if the mouse is currently set to be visible.
---@return boolean
function Client.GetMouseVisible() end

--- Opens a URL in the overlay browser.
---@param url string
function Client.ShowWebpage(url) end

--- Returns true if the game window currently has focus.
---@return boolean
function Client.GetIsWindowFocused() end

--- Gets the number of user-created mods currently installed on the client.
---@return number
function Client.GetNumMods() end

--- Sets whether or not the specified mod is active and will be mounted automatically on the client.
---@param modIndex number
---@param active boolean
function Client.SetModActive(modIndex, active) end

--- Returns the mod index for the specified mod id.
---@param modId number
---@return number
function Client.GetModIndex(modId) end

--- Returns the mod id  for the specified mod index.
---@param modIndex number
---@return number
function Client.GetModId(modIndex) end

--- Returns true if the mod is currently set to be active.
---@param modIndex number
---@return boolean
function Client.GetIsModActive(modIndex) end

--- Returns true if the mod is setup to be mounted into the file system. It's possible for a mod to become "unmounted" after the function returns true if it is disabled by server-side consistency checking.
---@param modIndex number
---@return boolean
function Client.GetIsModMounted(modIndex) end

--- Refreshes the mod list if not already in the process of being refreshed.
---@return boolean
function Client.RefreshModList() end

--- Returns true if the mod list is in the process of being refreshed.
---@return boolean
function Client.ModListIsBeingRefreshed() end

--- Returns the name of the mod with the specified index. Index is 1 based.
---@param index number
---@return string
function Client.GetModTitle(index) end

--- Returns the description of the mod with the specified index.  Index is 1 based.
---@param index number
---@return string
function Client.GetModDescription(index) end

--- Returns the current state of a mod with the specified index. Index is 1 based.
---@param index number
---@return string
function Client.GetModState(index) end

--- Returns true if the mod is currently subscribed for recieving auto updates. Index is 1 based.
---@param index number
---@return boolean
function Client.GetIsSubscribedToMod(index) end

--- Returns true if the mod is a internal mod like local mods that shouldn't be listed on the mods page. Index is 1 based.
---@param index number
---@return boolean
function Client.GetIsModInternal(index) end

--- Returns the amount of the mod that has been downloaded. Index is 1 based. Returns true if currently downloading, the number of bytes downloaded, the number of bytes total, the retry count and an "other status" string.
---@param index number
---@return boolean
function Client.GetModDownloadProgress(index) end

--- Pass in the path to music to play.
---@param fileName string
function Client.PlayMusic(fileName) end

--- Stop previously played music based on it's path.
---@param fileName string
function Client.StopMusic(fileName) end

--- Returns a text description of the current mode for the foreground world. When the foreground world is a loading world, this can provide useful status information.
---@return string
function Client.GetModeDescription() end

--- Returns the progress specified for the current mode.
---@return number
function Client.GetModeProgress() end

--- Stores data during client-side prediction which can be vertified on a listen server with VerifyPredictionData.
---@param key string
---@param data string
function Client.StorePredictionData(key, data) end

--- Returns true if the client is authorized to use the specified DLC.
---@param productId number
---@return boolean
function Client.GetIsDlcAuthorized(productId) end

--- Returns true if the client owns the specified item
---@param itemId number
---@return boolean
function Client.GetOwnsItem(itemId) end

--- Returns true if client owns all ItemIDs in the supplied array-table list
---@param list table
---@return boolean
function Client.GetOwnsItemList(list) end

--- Returns true if inventory has been loaded. Check this before calling Client.GetOwnsItem.
---@return boolean
function Client.IsInventoryLoaded() end

--- Exchange a client's item with another, for use with item defined crafting recipes
---@param inItemId number
---@param outItemId number
function Client.ExchangeItem(inItemId, outItemId) end

--- Refresh the client's entire inventory
function Client.UpdateInventory() end

--- Grant any available promo items
function Client.GrantPromoItems() end

--- Adds the given promo item to the client's steam inventory
---@param itemId number
function Client.AddPromoItem(itemId) end

--- Simple check to determine if a given ItemID is a Bundle Item, and not a single object.
---@param bundleId number
---@return boolean
function Client.GetIsBundleItem(bundleId) end

--- Returns a table-array list of all defined items that are Bundles.
---@param table table
---@return boolean
function Client.GetAllItemBundles(table) end

--- Returns the ItemID of all items contained in the given Item Bundle ID. Empty table when invalid or not found bundle id is passed.
---@param bundleItemId number
---@param bundleItems table
---@return boolean
function Client.GetItemBundleItems(bundleItemId, bundleItems) end

--- Will record playtime for item drop purposes. Must be called at least once a minute. Can be called more frequently with no ill effects.
function Client.SendItemDropHeartbeat() end

--- Triggers an item drop. The InventoryNewItem event will trigger if an item was granted
function Client.TriggerItemDrop() end

--- Begins async query to fetch all available items that can be purchased through item store. Results will be returned via
function Client.UpdatePurchasableItemsList() end

---@return string
function Client.GetCurrencyCode() end

--- Returns a table of tables (or empty table on no results) containing the following
---- Table[idx]:
---- 1: [ItemName], 2: [BasePrice], 3: [CurrentPrice]
---@param items table
---@return boolean
function Client.GetPurchasableItems(items) end

--- Returns a table of tables of all DLCs client can purchase and doesn't already own. Returns bool to indicate successful data fetch.
---@param list table
---@return boolean
function Client.GetAllPurchasableDlc(list) end

--- Returns a simple list of all DLC IDs that are currently \'available\' (can be purchased). Returns bool to indicate successful data fetch.
---@param list table
---@return boolean
function Client.GetAvailableDlcList(list) end

--- Fetched the properties of the given DLC ID. Table will be empty if an invalid ID is passed.
---@param dlcId number
---@param dataTable table
---@return boolean
function Client.GetDlcProperties(dlcId, dataTable) end

--- Fetches the associated DLC AppID for the given ItemID.
---@param itemId number
---@return number
function Client.GetItemDlcAppId(itemId) end

--- Returns boolean to indicate if given DLC AppId is purchasable.
---@param dlcId number
---@return boolean
function Client.GetIsDlcPurchasable(dlcId) end

--- Returns empty talbe if ItemID is not found, otherwise returns table holding all item fields in array
---@param itemId number
---@param itemData table
---@return boolean
function Client.GetItemDetails(itemId, itemData) end

--- Denotes if given ItemID can be bought via the game item store
---@param itemId number
---@return boolean
function Client.GetIsItemPurchasable(itemId) end

--- Initiates the Item purchase process for the supplied 'array' of ItemIDs
---@param itemList table
---@return boolean
function Client.BeginItemPurchase(itemList) end

--- Activates Steam overlay and opens the Steam store to the supplied DLC AppID web-store. This will also automatically add the given DLC to the client\'s shopping cart.
---@param dlcAppId number
---@return boolean
function Client.ActivateOverlayToDlcStore(dlcAppId) end

--- Activates Steam overlay to prompt the user to send a friend request to the specified steam id.
---@param steamID64str string
---@return boolean
function Client.ActivateOverlayToAddFriend(steamID64str) end

--- Sets a debug text. Only used when debugging lua from C++
---@param text string
function Client.SetDebugText(text) end

--- Get static data (persistent across luavms)
---@return number
function Client.GetStaticData() end

--- Set static data (persistent across luavms)
---@param data number
function Client.SetStaticData(data) end

--- Returns if the steam overlay is currently visible.
---@return boolean
function Client.GetIsSteamOverlayActive() end

--- Returns if the steam overlay is enabled.
---@return boolean
function Client.GetIsSteamOverlayEnabled() end

--- Returns the last time the render device called Present().  (Called every time something is drawn to the screen.  Use this in conjunction with Client.GetLastRenderResetTime() to ensure you don't re-create elements too soon!)
---@return number
function Client.GetLastPresentTime() end

--- Sends a request to Steam to find the leaderboard with the given name, and return it's handle -- a unique value corresponding to that leaderboard that all other leaderboard functions require.  This is an asynchronous call, meaning there is no return value, and the results of this call will become known later, and delivered in the form of an Event hook.  The hook will arrive as either "LeaderboardFindFail" or "LeaderboardFindSuccess".  LeaderboardFindFail carries with it a single parameter, a boolean called "canRetry".  This is a hint at why the operation failed, and if it would be useful to try requesting again.  For example, if there is an IO failure, we fail, but we should try agian soon.  But if, however, we receive back from Steam that there is no leaderboard with that name, we shouldn't bother trying again.  LeaderboardFindSuccess returns a single string value, the "handle" of the leaderboard.  This is a unique integer that corresponds to that leaderboard, which is used in all other leaderboard operations.  Due to the asynchronous nature of this function, and the fact that the passed-in string name isn't returned with the hook, you should ensure that you do not send a request for a leaderboard name while still waiting for a response from an earlier request, especially if the leaderboard names are different.  Otherwise, you might end up associating a name with the wrong handle because responses were received out of order.  Also note that this function does not create leaderboards -- it only finds leaderboards that have already been created.  NOTE ABOUT HANDLES:  Steam uses 64-bit unsigned integers as handles.  Lua does not have a 64-bit integer type, so we use strings instead.
---@param boardName string
function Client.GetLeaderboardHandleByName(boardName) end

--- Sends a request to Steam to upload the given score to the given leaderboard.  This is an asynchronous call.  A response will come in the form of an event hook to either "LeaderboardUploadSuccess" or "LeaderboardUploadFail".  Failure implies either steam rejected the entry, or there was an IO problem.  Success implies that the operation was successful, not necessarily that the score was updated (the new score might not have been better than the score the user already had on the leaderboard.  LeaderboardUploadSuccess carries with it one parameter, a table.  The table contains 5 entries, named "handle", "score", "changed", "globalRank", and "prevGlobalRank".  Handle is the integer handle of the leaderboard the score was posted to.  Score is the integer score that was uploaded.  Changed is a boolean indicating whether or not the player's score changed (false meaning their old score was better, true meaning their new score was better).  Global rank is an integer corresponding to the user's rank in the leaderboard, globally, and prev global rank is the rank they held before their score was uploaded. NOTE:  If a worse score is uploaded, the globalRank and prevGlobalRank fields are sometimes 0.  Don't rely on these always being filled, especially when "changed" is false.
---@param boardHandle string
---@param score number
function Client.UploadScoreToLeaderboard(boardHandle, score) end

--- Each leaderboard entry (or "row") can also contain extra data corresponding to that submission.  For example, for Hive Challenge, the score the leaderboard is sorted by is the score the player had when the game ended, but we can also include extra information about the score, like which wave number the user reached, or how many kills they got in that time.  The format of the scoreExtra table should be integers in an array-type table.  Named fields will be ignored.  Entries will be read starting at index 1 up until the first nil entry is found.
---@param boardHandle string
---@param score number
---@param scoreExtra table
function Client.UploadScoreToLeaderboard(boardHandle, score, scoreExtra) end

--- Used to determine if a user can upload to the steam cloud or not.  Returns a code, 0 for true, >0 for error codes.  See NetworkServices.CloudStatus.  If steam is down, we might just want to retry after some time, but if it's disabled by the user, we can prompt them to allow it, if only temporarily.
---@return NetworkServices.CloudStatus
function Client.GetIsSteamCloudEnabled() end

--- Set whether or not steam cloud sync is enabled for this app.  NOTE:  If the user has it disabled for their account, this setting won't have any visible impact.  There is no function to change this setting for the whole user account -- only setting it for this particular app.  Returns true if successful, false if not.
---@param state boolean
---@return boolean
function Client.SetIsSteamCloudEnabled(state) end

--- Uploads the replay for the leaderboard, with the file name given.  ReplayType determines which engine methods are used to convert the lua table to the binary file that will be send to the Steam cloud.  This is an asynchronous call.  The boolean return value is only for if it was able to make the request -- not the result of the request itself.  The result of the request will be delivered via the event hooks "ShareFileFailed" or "ShareFileSuccess".  Failed has no parameters or return values.  Success has two parameters: a string for the UGC (user-generated content) handle that refers to the file uploaded, and a string for the file name.
---@param remoteFileName string
---@param replayTable table
---@param replayType Challenge.ReplayType
---@return boolean
function Client.UploadReplay(remoteFileName, replayTable, replayType) end

--- Sends a request to Steam to download from the given leaderboard the globally-ranked entries within the provided range.  This is an asynchronous call.  The boolean return value is only for if it was able to make the request -- not the results of the request itself.  The results of this call will be delivered via the event hooks "DownloadScoresFailed" or "DownloadScoresSuccess".  Failure has no parameters.  Success has one parameter, a table with entries 1..n, where n is the entry number, not the rank.  Each entry is itself a table, with 5 named members: "steamId", "globalRank", "score", "ugcHandle", and "details".  All entries exscept "details" are integers.  The details member is a table with entries 1..n, where n is the number of "extra" information the entry contained.  Each entry in details is an integer.  Each steam leaderboard can contain up to 10 "extra" values per entry.  These are for supporting information about how the user obtained the score (for example, the score on the leaderboard might be the player's actual score obtained during a round of Hive Challenge, but we can include extra information like number of kills and number of swipes).
---@param boardHandle string
---@param rangeStart number
---@param rangeEnd number
---@return boolean
function Client.DownloadGlobalLeaderboardEntries(boardHandle, rangeStart, rangeEnd) end

--- Sends a request to Steam to download from the given leaderboard the globally-ranked entry for the current player, in addition to the neighboring entries better and worse than the player.  Parameter frontCount is how many better scores to download, and backCount is how many scores worse than the player to download.  If it is not possible to fulfill these range requirements (eg if not enough entries are above or below the player), Steam will attempt to adjust the range to keep the total entry count the same.  This is an asynchronous call.  See documentation on Client.DownloadGlobalLeaderboardEntries for information on how to receive the results.  The same hook names are used.
---@param boardHandle string
---@param frontCount number
---@param backCount number
---@return boolean
function Client.DownloadGlobalLeaderboardEntriesAroundPlayer(boardHandle, frontCount, backCount) end

--- Sends a request to Steam to download from the given leaderboard the entire list of entries owned by players that are friends with the current player, in addition to the player's own entry.  This is an asynchronous call.  The boolean return value is only for if it was able to make the request -- not the results of the request itself.  See documentation for Client.DownloadGlobalLeaderboardEntries() for information on how to receive results.
---@param boardHandle string
---@return boolean
function Client.DownloadFriendsLeaderboardEntries(boardHandle) end

--- Sends a request to Steam to download the specified User Generated Content.  This is an asynchronous call.  The boolean return value is only for if it was able to make the request -- not the results of the request itself.  The results of the request are delivered via the event hooks "DownloadUGCFailed" and "DownloadUGCSuccess".  Failed has one parameter: the error code.  Success has two parameters: the ugc file handle, and the size, in bytes.  The file handle can then be passed to another engine function for reading/converting the data to whatever data type is appropriate given where the ugc originated from.
---@param ugcHandle string
---@return boolean
function Client.DownloadUGC(ugcHandle) end

--- Returns the fraction of the ugc file that has downloaded (0.0 to 1.0).  Returns -1.0 if there is an error.
---@param ugcHandle string
---@return number
function Client.GetUGCDownloadProgress(ugcHandle) end

--- Attempts to convert some downloaded User Generated Content to a lua table of replay content, with a specific format. UGC must be finished downloading before it can be used with this method.
---@param ugcHandle string
---@param fileSize number
---@param replay table
---@param replayType Challenge.ReplayType
---@return boolean
function Client.GetReplayFromDownloadedUGC(ugcHandle, fileSize, replay, replayType) end

--- Deprecated. Use Client.ActivateAvatarRequest() instead.
---@param steamId number
---@param textureName string
---@return boolean
function Client.RequestAvatarImageForPlayer(steamId, textureName) end

--- Puts in a request for the avatar image of the given steamId, or, if already present, increases the priority.  DO NOT CALL UNNECESSARILY -- only call once per system that wants the image, and ensure there is a matching call to Client.DeactivateAvatarRequest() with the same steamId.
---@param steamId64 string
function Client.ActivateAvatarRequest(steamId64) end

--- Cancels an earlier request for avatar image of the given steamId.  MUST be following a matching call to Client.ActivateAvatarRequest for the same steamId.
---@param steamId64 string
function Client.DeactivateAvatarRequest(steamId64) end

--- Returns the name of the texture that would be associated with this steamId if the steamId has an avatar loaded.  In other words, it just formats the string, doesn't perform any checks to ensure the avatar is loaded.
---@param steamId64 string
---@return string
function Client.GetTextureNameForAvatar(steamId64) end

--- Deprecated.
---@param textureName string
---@return boolean
function Client.ClearAvatarByTextureName(textureName) end

--- Deprecated.
---@param textureName string
---@return boolean
function Client.GetIsAvatarActiveByTextureName(textureName) end

--- Returns true if the avatar for the given steam ID is available (eg it is bound to a texture and ready to be rendered.  Will return false if there is no request active for it, or if there is a request active but it has just not yet been downloaded.  There is a limited number of avatar images that can be active at once, so if an avatar isn't loading, check to see if you've got a bunch loaded already.
---@param steamId64 string
---@return boolean
function Client.GetIsAvatarReady(steamId64) end

--- Sends an async request to Steam to attach the given ugc to the user's entry in the leaderboard.  Must be called after the ugc has been uploaded.  Return value is for if the request went through or not.  Result of request delivered via hooks "UGCAttachSuccess" or "UGCAttachFail".  UGCAttachFail comes with one parameter, the error code.  UGCAttachSuccess has no parameters.
---@param ugcHandle string
---@param boardHandle string
---@return boolean
function Client.AttachUGCToLeaderboard(ugcHandle, boardHandle) end

--- Returns the total number of leaderboard entries the leaderboard had on the last query.  Only works after the first query.
---@param boardHandle string
---@return number
function Client.GetNumLeaderboardEntries(boardHandle) end

--- Sends a request to Steam to get the username of the steam user with the given id.  If the username is already known, the result is stored as field "steamName" in the passed-in table, and the function returns true.  If the username is not known, an asynchronous request is sent to steam, and the function returns false -- the table left unchanged.  The results of the request to steam will be available in the "SteamNameReceived" event hook.  The hook is called with two parameters: the steam id requested, and the steam name that it corresponds to.
---@param steamId32 number
---@param result table
---@return boolean
function Client.RequestSteamName(steamId32, result) end

--- Retrieves the replay table passed from the local server.  Returns false if fails, true if succeeds.
---@param replay table
---@param replayType Challenge.ReplayType
---@return boolean
function Client.GetReplayFromServerData(replay, replayType) end

---@param replay table
---@param replayType Challenge.ReplayType
---@return boolean
function Client.SendReplayToServer(replay, replayType) end

---@param enabled boolean
function Client.SetSyncedServerUpdates(enabled) end

---@param name string
---@param data number
---@return boolean
function Client.SetUserStat_Int(name, data) end

---@param name string
---@param data number
---@return boolean
function Client.SetUserStat_Float(name, data) end

---@param statName string
---@return number
function Client.GetUserStat_Float(statName) end

---@param statName string
---@return number
function Client.GetUserStat_Int(statName) end

--- Returns the address of the server the client is currently connected to
---@return string
function Client.GetConnectedServerAddress() end

--- Special-case precaching function to load Animation Graphs only into client without ServerWorld resource sync.
---@param fileName string
function Client.PrecacheLoadAnimationGraph(fileName) end

--- Prompts the client to update their cached Steam Friends list, results of update will be sent to 'OnSteamFriendsUpdated' event hook.
--- The list will be a table of tables. Each entry will be: 1:Name, 2: SteamID[SteamID64-string], 3:State (Client.FriendState_XYZ), 4:ServerAddress (IP:Port - string).
--- Friends list is sorted by their InGame flag and SteamID (descending), top of list will contain users in an active server.
---
--- Friend Avatars can be retrieved via the Client.RequestAvatarImageForPlayer(), but this is only accessible _after_ TriggerFriendsListUpdate
--- is completed and sucessful.
---
--- The data is sorted as following:
--- 1) In-Game connected to Server
--- 2) In-Game, no server
--- 3) Online and active
--- 4) Everything else
function Client.TriggerFriendsListUpdate() end

--- Returns the cached friends list data that was populated by Client.TriggerFriendsListUpdate being called.
---@param friendsList table
---@return boolean
function Client.GetSteamFriendsList(friendsList) end

---@return number
function Client.GetFriendListLastUpdateTime() end

---@param userSteamId64 string
---@param serverAddress string
---@return boolean
function Client.SendPlayerInvite(userSteamId64, serverAddress) end

--- Automatically called when Client.SetOption____() functions are called.  No need to call this.
function Client.SaveOptions() end

--- Returns whether or not caps lock is enabled.
---@return boolean
function Client.GetCapsLockEnabled() end

---@return boolean
function Client.CommitPendingStats() end

--- Returns the Steam App Build ID.
---@return number
function Client.GetSteamBuildId() end

--- Gets if the slow disk popup has been shown.
---@return boolean
function Client.GetSlowDiskPopupShown() end

--- Sets if the slow disk popup has been shown.
---@param shown boolean
function Client.SetSlowDiskPopupShown(shown) end

--- Simple getter to dentoe if Steam was properly initialized and online
---@return boolean
function Client.GetIsSteamInitialized() end

--- Simple data-caching means to save local-client's Hive profile data. Used to reduce the number of calls to Hive.
---@param avgSkill number
---@param commSkill number
---@param skillOffset number
---@param commOffset number
---@param adagrad number
---@param td_avgSkill number
---@param td_commSkill number
---@param td_skillOffset number
---@param td_commOffset number
---@param td_adagrad number
---@param level number
---@param xp number
---@param score number
---@param hiveBadges string
---@param lat number
---@param longi number
---@param tdSysEnabled boolean
function Client.SetLocalHiveProfileData(avgSkill, commSkill, skillOffset, commOffset, adagrad, td_avgSkill, td_commSkill,
                                        td_skillOffset, td_commOffset, td_adagrad, level, xp, score, hiveBadges, lat,
                                        longi, tdSysEnabled) end

--- Simple getting to fetch cached local-client's Hive profile data. Numerically indexed as follows:
--- 1 - AvgSkill
--- 2 - CommSkill
--- 3 - SkillOffset
--- 4 - CommSkillOffset
--- 5 - Adagrad
---
--- 6 - TDAvgSkill
--- 7 - TDCommSkill
--- 8 - TDSKillOffset
--- 9 - TDCommSkillOffset
--- 10 - TDAdagrad
---
--- 11 - Level
--- 12 - XP
--- 13 - Score
--- 14 - Badges
---
--- 15 - lat
--- 16 - long
---
--- 17 - Thunderdome System Enabled flag
---
--- Lat and Long values are not written anywhere and only temporarily (per session) stored in memory. Hive returns this from the IP the query was made from only.
---@param profile table
---@return boolean
function Client.GetLocalHiveProfileData(profile) end

---@return boolean
function Client.GetLocalThunderdomeMode() end

---@param sessId string
function Client.SetThunderdomeSessionId(sessId) end

---@return string
function Client.GetThunderdomeSessionId() end

--- Handler for client disconnect events while Thunderdome Mode enabled.
---@param lobbyId string
---@param activeLobby boolean
---@param activeMatch boolean
function Client.ThunderdomeDisconnectEvent(lobbyId, activeLobby, activeMatch) end

--- Handler for client disconnect events while Thunderdome Mode enabled.
---@param lobbyId string
---@param activeLobby boolean
---@param activeMatch boolean
---@param privateLob boolean
function Client.ThunderdomeDisconnectEvent(lobbyId, activeLobby, activeMatch, privateLob) end

---@param lobbyId string
---@param activeLobby boolean
---@param activeMatch boolean
---@param privateLob boolean
---@param clientChoseLeave boolean
function Client.ThunderdomeDisconnectEvent(lobbyId, activeLobby, activeMatch, privateLob, clientChoseLeave) end

--- Return timestamp of current penalty period expiration
---@return number
function Client.GetThunderdomeActivePenaltyPeriod() end

--- Returns if local client is within a penalized period for thunderdome usage.
---@return boolean
function Client.GetIsThunderdomePenalized() end

--- Returns the number of seconds remaining in the current-active Thunderdome penalty period.
---@return number
function Client.GetThunderdomePenaltyTimeRemain() end

--- Returns timestamp applicable for Thunderdome usage across all timezones.
---@return number
function Client.GetTdTimestamp() end

--- Returns if internal Thunderdome data is being operated on.
---@return boolean
function Client.GetIsThunderdomeDataLoading() end

--- Returns if initalization of Thunderdome data is complete.
---@return boolean
function Client.GetThunderdomeDataInitialized() end

--- Returns if the client should attempt to rejoin a cached lobby id.
---@return boolean
function Client.GetThunderdomeShouldRejoinLobby() end

function Client.DumpPenaltyState() end

--- Return TD banned state for local-client.
---@return boolean
function Client.GetIsTDBanned() end

--- Triggers Steam Overlay to show and display Friend-Invite to local-client's current lobby. Returns false if Overlay is disabled.
---@param lobbyIdStr string
---@return boolean
function Client.ShowSteamOverlayLobbyInvite(lobbyIdStr) end

--- Simple mechanism to overwrite the on-launch lobby-id. This is used for stored lobby-id when getting invitations while connected to any server.
---@param invitedToId string
function Client.SetLobbyInviteCache(invitedToId) end

--- Sends a lobby invitation to the given steam-friend per the SteamID64 to the supplied LobbyID.
---@param lobbyId string
---@param inviteeId string
---@return boolean
function Client.SendLobbyInvite(lobbyId, inviteeId) end

--- Sets the is-joinable flag for the current active lobby. Can only be set by Lobby Owner client.
---@param lobbyId string
---@param canJoin boolean
---@return boolean
function Client.SetLobbyJoinable(lobbyId, canJoin) end

--- Triggers local-client Steam overlay (if enabled) to display the Friend Invite screen.
---@param lobbyId string
---@return boolean
function Client.ShowOverlayLobbyInvite(lobbyId) end

--- Flush cached lobby-id supplied by Steam on game launch.
function Client.ClearLaunchLobbyId() end

---@return string
function Client.GetSessionAuthToken() end

--- Triggers local-client to update its stored, in memory, achievements data. Steam can rate-limit this call, so use infrequently.
function Client.ForceUpdateAchievements() end

---@enum Client.SoundDeviceType
Client.SoundDeviceType = {
    SoundDeviceType_Input = 1,
    SoundDeviceType_Output = 2
}

---@enum Client.ModVisibility
Client.ModVisibility = {
    ModVisibility_Public = 1,
    ModVisibility_FriendsOnly = 2,
    ModVisibility_Private = 3,
    ModVisibility_Unlisted = 4
}

---@enum Client.ModKind
Client.ModKind = {
    ModKind_Unknown = 1,
    ModKind_Level = 2,
    ModKind_Gameplay = 3,
    ModKind_Game = 4,
    ModKind_Server = 5,
    ModKind_Cosmetic = 6,
    ModKind_ResourcePac = 7
}

---@enum Client.SteamLobbyChatEntryType
Client.SteamLobbyChatEntryType = {
    SteamLobbyChatEntryType_Invalid=1,
    SteamLobbyChatEntryType_ChatMsg=2,
    SteamLobbyChatEntryType_Typing=3,
    SteamLobbyChatEntryType_InviteGame=4,
    SteamLobbyChatEntryType_Emote=5,
    SteamLobbyChatEntryType_LeftConversation=6,
    SteamLobbyChatEntryType_Entered=7,
    SteamLobbyChatEntryType_WasKicked=6,
    SteamLobbyChatEntryType_WasBanned=9,
    SteamLobbyChatEntryType_Disconnected=10,
    SteamLobbyChatEntryType_HistoricalChat=11,
    SteamLobbyChatEntryType_Reserved1=12,
    SteamLobbyChatEntryType_Reserved2=13,
    SteamLobbyChatEntryType_LinkBlocke=14
}

---@enum Client.SteamLobbyUserStateChange
Client.SteamLobbyUserStateChange = {
    SteamLobbyUserStateChange_Entered=1,
    SteamLobbyUserStateChange_Left=2,
    SteamLobbyUserStateChange_Disconnected=3,
    SteamLobbyUserStateChange_Kicked=4,
    SteamLobbyUserStateChange_Banne=5,
}

---@enum Client.SteamLobbyEnterResponse
Client.SteamLobbyEnterResponse = {
    SteamLobbyEnterResponse_Success=1,
    SteamLobbyEnterResponse_DoesNotExist=2,
    SteamLobbyEnterResponse_NotAllowed=3,
    SteamLobbyEnterResponse_Full=4,
    SteamLobbyEnterResponse_Error=5,
    SteamLobbyEnterResponse_Banned=6,
    SteamLobbyEnterResponse_Limited=7,
    SteamLobbyEnterResponse_ClanDisabled=8,
    SteamLobbyEnterResponse_CommunityBan=9,
    SteamLobbyEnterResponse_MemberBlocked=10,
    SteamLobbyEnterResponse_UserBlockedMembe=11
}
---@enum Client.SteamLobbyCreateResult
Client.SteamLobbyCreateResult = {
   SteamLobbyCreateResult_OK=1,
   SteamLobbyCreateResult_Fail=2,
   SteamLobbyCreateResult_NoConnecttion=3,
   SteamLobbyCreateResult_AccessDenied=4,
   SteamLobbyCreateResult_Timeout=5,
   SteamLobbyCreateResult_LimitExceede=6
}

---@class NetworkServices
NetworkServices = {}
---@enum NetworkServices.CloudStatus
NetworkServices.CloudStatus = {
    CloudStatus_Enabled=1,
    CloudStatus_DisabledByUserAccount=2,
    CloudStatus_SteamDown=3,
    CloudStatus_SteamRemoteStorageDown=4,
    CloudStatus_NetworkServicesUnavailable=5,
    CloudStatus_DisabledByAp=6
}

---@class Challenge
Challenge = {}
---@enum Challenge.ReplayType
Challenge.ReplayType = {
    SkulkChallenge = "ReplayType_SkulkChallenge"
}

Client.kSkillFields_Skill = nil
Client.kSkillFields_SkillOffset = nil
Client.kSkillFields_CommSkill = nil
Client.kSkillFields_CommSkillOffset = nil
Client.kSkillFields_SkillSign = nil
Client.kSkillFields_CommSkillSign = nil
Client.kSkillFields_Adagrad = nil
Client.kSkillFields_CommAdagrad = nil
Client.kSkillFields_TD_Skill = nil
Client.kSkillFields_TD_SkillOffset = nil
Client.kSkillFields_TD_CommSkill = nil
Client.kSkillFields_TD_CommSkillOffset = nil
Client.kSkillFields_TD_SkillSign = nil
Client.kSkillFields_TD_CommSkillSign = nil
Client.kSkillFields_TD_Adagrad = nil
Client.kSkillFields_TD_CommAdagrad = nil
Client.kSkillFields_Xp = nil
Client.kSkillFields_Level = nil
Client.kSkillFields_Score = nil
Client.kSkillFields_Playtime = nil
Client.kSkillFields_MarinePlaytime = nil
Client.kSkillFields_AlienPlaytime = nil
Client.kSkillFields_CommanderPlaytime = nil
Client.SteamLobbyMaxDataFieldLength = nil
Client.SteamLobbyMaxChatMessageLength = nil
Client.SteamLobbyMaxUserSlots = nil
