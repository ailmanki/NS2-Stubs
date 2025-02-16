---@class ServerClient
ServerClient = {}

--- Returns true if the Client only exist on the server (is a bot for example).
---@return boolean
function ServerClient:GetIsVirtual() end

--- Sets the player entity being controlled by this Client. The entity being controlled by this Client is subject to different networking than other entities.
---@param player Entity
function ServerClient:SetControllingPlayer(player) end

--- Sets the player entity that this Client will be spectating, so that the Client will see what that player entity is seeing.
---@param player Entity
function ServerClient:SetSpectatingPlayer(player) end

--- Returns the entity being controlled by this Client.
---@return Entity
function ServerClient:GetControllingPlayer() end

--- Returns id of the entity being controlled by this Client.
---@return number
function ServerClient:GetControllingPlayerId() end

--- Returns the player entity being spectated by this Client.
---@return Entity
function ServerClient:GetSpectatingPlayer() end

--- Returns the entity being controlled or spectated by this Client.
---@return Entity
function ServerClient:GetPlayer() end

--- Returns the unique Id of this Client on the Server.
---@return number
function ServerClient:GetId() end

--- Returns true if this client is using a spectator slot.
---@return boolean
function ServerClient:GetIsSpectator() end

--- Tries to set whether this client is using a spectator slot or not. Returns true if the slot state of this client was successfully changed.
---@param isSpectator boolean
---@return boolean
function ServerClient:SetIsSpectator(isSpectator) end

--- Returns the average ping time for this Client.
---@return number
function ServerClient:GetPing() end

--- Returns true if the ServerClient is on the same machine as the Server.
---@return boolean
function ServerClient:GetIsLocalClient() end

--- Sets a bit mask which is used to determine if an entity is relevant to this ServerClient. The entity is relevant if (entity.mask & client.mask) ~= 0.
---@param mask number
function ServerClient:SetRelevancyMask(mask) end

--- Returns the user's globally unique Id.
---@return number
function ServerClient:GetUserId() end


---@return boolean
function Shared.GetIsRunningPrediction() end

---@param command string
function Shared.ConsoleCommand(command) end

---@meta Server
---@class Server
Server = {}

---@param key string
---@param value string
function Server.SetServerProperty(key, value) end

--- Controls what network fields are truncated to network precision after an OnProcessMove.
--- 	This affects client/server syncronization; turning it completly off may cause some slight issues with hit registration.
--- 	0 -> off, 1 -> only compensated fields, 2 -> all fields.
--- 	Compensated fields only are the default and should be enough and not very expensive.
--- 	Truncating all fields adds about 10% extra cost to processing moves.
--- 	Can also be controlled by the "field_trunc" server console command.
---@param value number
function Server.SetNetworkFieldTruncationControl(value) end

--- See Server.SetNetworkFieldTruncationControl.
---@return number
function Server.GetNetworkFieldTruncationControl() end

---@param func function
function Server.ForAllPlayers(func) end

--- The total number of players that are connected and have made it in-game.
---@return number
function Server.GetNumPlayers() end

--- The total number of players that are at a playing team.
---@return number
function Server.GetNumPlayingPlayers() end

--- The total number of clients that are either already connected or currently authenticating.
---@return number
function Server.GetNumClientsTotal() end

--- The total number of playing players that are either already connected or currently authenticating.
---@return number
function Server.GetNumPlayersTotal() end

--- How many times the server updates the AI world per second.
---@return number
function Server.GetTickrate() end

--- How many times the server sends update to the client per second. Will not exceed GetTickRate.
---@return number
function Server.GetSendrate() end

--- Bandwidth limit in bytes per second per player.
---@return number
function Server.GetBwLimit() end

---@return number
function Server.GetMaxPlayers() end

---@return number
function Server.GetMaxSpectators() end

---@return number
function Server.GetNumSpectators() end

---@return number
function Server.GetReservedSlotLimit() end

--- After calling this method the server is not considered by quickplay/matchmaking anymore.
function Server.DisableQuickPlay() end

--- Set how many reserved slot are available at the server. Returns true if the reserved slot limit was changed successfully
---@param limit number
---@return boolean
function Server.SetReservedSlotLimit(limit) end

---@param avgPlayerSkill number
function Server.SetAvgPlayerSkill(avgPlayerSkill) end

---@return number
function Server.GetAvgPlayerSkill() end

---@return number
function Server.GetFreeEntityCount() end

---@param messageName string
---@param variables table
function Server.SendNetworkMessage(messageName, variables) end

---@param messageName string
---@param variables table
---@param reliable boolean
function Server.SendNetworkMessage(messageName, variables, reliable) end

---@param player Entity
---@param messageName string
---@param variables table
---@param reliable boolean
function Server.SendNetworkMessage(player, messageName, variables, reliable) end

---@param client ServerClient
---@param messageName string
---@param variables table
---@param reliable boolean
function Server.SendNetworkMessage(client, messageName, variables, reliable) end

---@param messageName string
---@param callback function
---@return boolean
function Server.HookNetworkMessage(messageName, callback) end

---@param client ServerClient
---@param productId number
---@return boolean
function Server.GetIsDlcAuthorized(client, productId) end

---@param player Entity
---@param message string
function Server.Broadcast(player, message) end

---@return ServerClient
function Server.AddVirtualClient() end

---@param client ServerClient
function Server.DisconnectClient(client) end

---@param client ServerClient
---@param message string
function Server.DisconnectClient(client, message) end

---@param client ServerClient
---@param message string
function Server.AfkDisconnectClient(client, message) end

---@param clientId number
---@return ServerClient
function Server.GetClientById(clientId) end

---@param player Entity
---@return ServerClient
function Server.GetOwner(player) end

---@param client ServerClient
---@return number
function Server.GetClientAddress(client) end

---@return number
function Server.GetIpAddress() end

---@param player Entity
---@param command string
function Server.ClientCommand(player, command) end

---@param player Entity
---@param command string
---@return boolean
function Server.SendCommand(player, command) end

---@param mapName string
---@return Entity
function Server.CreateEntity(mapName) end

---@param mapName string
---@param fields table
---@return Entity
function Server.CreateEntity(mapName, fields) end

---@param entity Entity
function Server.DestroyEntity(entity) end

---@param key string
---@return string
function Server.GetPredictionData(key) end

---@return boolean
function Server.GetServerHidden() end

---@param player Entity
---@param fileName string
---@param parent Entity
---@param volume number
---@param origin Vector
function Server.PlayPrivateSound(player, fileName, parent, volume, origin) end

---@param player Entity
---@param fileName string
---@param parent Entity
---@param volume number
---@param origin Vector
---@param ignoreDistance boolean
function Server.PlayPrivateSound(player, fileName, parent, volume, origin, ignoreDistance) end

---@param soundName string
---@return number
function Server.GetSoundLength(soundName) end

---@param resourceIndex number
---@return number
function Server.GetCinematicLength(resourceIndex) end

--- Set the list of urls to use for backup mod downloads, and if those should be used before trying steam.
--- Clients will randomize the order of the list and add steam either first or last, then loop over the list and try each in turn.
---@param backupServers table
---@param preferBackups boolean
function Server.SetModBackupServers(backupServers, preferBackups) end

---@param deltaTime number
function Server.Update(deltaTime) end

---@param mods table
---@param mapName string
function Server.StartWorld(mods, mapName) end

---@param newPassword string
function Server.SetPassword(newPassword) end

---@param botPlayerCount number
function Server.SetBotPlayerCount(botPlayerCount) end

---@return number
function Server.GetBotPlayerCount() end

---@return string
function Server.GetName() end

---@return number
function Server.GetPort() end

---@return number
function Server.GetFrameRate() end

--- Updates the internal player info which then can be used by a network service to update info about the player.
---@param client ServerClient
---@param name string
---@param score number
function Server.UpdatePlayerInfo(client, name, score) end

--- These key and value pairs are sent to the master server. This can be used to send the server tick rate or any other piece of information.
---@param key string
---@param value string
function Server.SetKeyValue(key, value) end

--- Adds a tag to the Server. The tags for a Server will be accessible to Clients in the server browser.
---@param tag string
function Server.AddTag(tag) end

--- Removes a tag previously added to a Server through Server.AddTag.
---@param tag string
function Server.RemoveTag(tag) end

---@param tags table
function Server.GetTags(tags) end

--- Calculates hashes for all files matching the pattern. Clients connected after this call will be forced to check their local files against these hashes and will be forced to disconnect if a mismatch is found. New hashes are added to those calculated in previous calls to AddFileHashes/AddRestrictedFileHashes(). Returns the number of files hashed.
---@param filePattern string
---@return number
function Server.AddFileHashes(filePattern) end

--- Calculates hashes for all files matching the pattern. Clients connected after this call will be forced to check their local files against these hashes and will be forced to disconnect if a mismatch is found. If a file on the client matches the pattern, but it doesn't exist on the server, then consistency checking will fail and the client will be fored to disconnected. New hashes are added to those calculated in previous calls to AddFileHashes/AddRestrictedFileHashes(). Returns the number of files hashed.
---@param filePattern string
---@return number
function Server.AddRestrictedFileHashes(filePattern) end

--- Excludes files that match the pattern from consistency checking.
---@param filePattern string
---@return number
function Server.RemoveFileHashes(filePattern) end

--- Returns the number of mods that are installed (not necessarily active).
---@return number
function Server.GetNumMods() end

--- Returns the name of the mod with the specified index.
---@param modIndex number
---@return string
function Server.GetModTitle(modIndex) end

--- Returns the Id of the specified mod.
---@param modIndex number
---@return string
function Server.GetModId(modIndex) end

--- Returns the number of active mods running on the Server.
---@return number
function Server.GetNumActiveMods() end

--- Returns the Id of the specified active mod.
---@param modIndex number
---@return string
function Server.GetActiveModId(modIndex) end

--- Returns the total number of maps that are available, including through any mods that are installed (but may not be active).
---@return number
function Server.GetNumMaps() end

--- Returns the name of the specified map. The map name does not include the directory or extension (e.g. "ns2_summit").
---@param mapIndex number
---@return string
function Server.GetMapName(mapIndex) end

--- Returns the Id of the mod that contains the specified map.
---@param mapIndex number
---@return string
function Server.GetMapModId(mapIndex) end

--- Installs a new mod.
---@param modId string
function Server.InstallMod(modId) end

--- Returns if the server is a dedicated server or a listen server
---@return boolean
function Server.IsDedicated() end

---@param tickrate number
function Server.SetTickRate(tickrate) end
---@param sendrate number
function Server.SetSendRate(sendrate) end
---@param moverate number
function Server.SetMoveRate(moverate) end
---@param interp number
function Server.SetInterpolationDelay(interp) end

---@param replay table
---@param replayType Challenge.ReplayType
---@return boolean
function Server.SendReplayToClient(replay, replayType) end

--- Retrieves the replay table passed from the client.  Returns false if fails, true if succeeds.
---@param replay table
---@param replayType Challenge.ReplayType
---@return boolean
function Server.GetReplayFromClientData(replay, replayType) end

---@param client ServerClient
---@param statName string
---@return number
function Server.GetUserStat_Float(client, statName) end

---@param client ServerClient
---@param statName string
---@return number
function Server.GetUserStat_Int(client, statName) end

--- Checks if the user-stat (float-type) exists.
---@param client ServerClient
---@param statName string
---@return boolean
function Server.GetHasUserStat_Float(client, statName) end

--- Checks if the user-stat (int-type) exists.
---@param client ServerClient
---@param statName string
---@return boolean
function Server.GetHasUserStat_Int(client, statName) end

---@param client ServerClient
---@return boolean
function Server.RequestUserStats(client) end

--- Prevents users from using the following commands: interp, cheats, tests, dev, speed, mr.
---@param state boolean
function Server.SetVariableTableCommandsAllowed(state) end

--- Creates a new relevancy portal, and returns the unique index that it can be reached with.  Relevancy portals are one-way connections between locations on the map.  When a player gets within "maxRange" of the "source" location, a relevancy circle begins to widen at "destination", proportional to how close the player is to the source position, reaching its maximum radius ("maxRange") when player's distance from source is 0.  This brings two benefits: 1) The server doesn't have to be sending the initial entity field data for quite so many entities all at once to the Client -- they would have already been initialized when the player started approaching the phase gate.  2) The client sees IMMEDIATELY what is on the other side of the phase gate, rather than having to wait for the Server to send them the data.  Relevancy portals only apply to player entities with a common mask.  For example, aliens cannot use phase gates, so they do not need the extra relevancy information.  The mask reflects this.  The default maxRange is 20 meters, half the default relevancy max radius.  Destination and range must be finite values.  Source location, however, can be non-finite, symbolizing that the portal should calculate relevancy with the maximum radius at the destination.
---@param source Vector
---@param destination Vector
---@param mask number
---@param maxRange number
---@return number
function Server.CreateRelevancyPortal(source, destination, mask, maxRange) end

--- Creates a new relevancy portal, and returns the unique index that it can be reached with.  Relevancy portals are one-way connections between locations on the map.  When a player gets within "maxRange" of the "source" location, a relevancy circle begins to widen at "destination", proportional to how close the player is to the source position, reaching its maximum radius ("maxRange") when player's distance from source is 0.  This brings two benefits: 1) The server doesn't have to be sending the initial entity field data for quite so many entities all at once to the Client -- they would have already been initialized when the player started approaching the phase gate.  2) The client sees IMMEDIATELY what is on the other side of the phase gate, rather than having to wait for the Server to send them the data.  Relevancy portals only apply to player entities with a common mask.  For example, aliens cannot use phase gates, so they do not need the extra relevancy information.  The mask reflects this.  The default maxRange is 20 meters, half the default relevancy max radius.  Destination and range must be finite values.  Source location, however, can be non-finite, symbolizing that the portal should calculate relevancy with the maximum radius at the destination.
---@param source Vector
---@param destination Vector
---@param mask number
---@return number
function Server.CreateRelevancyPortal(source, destination, mask) end

--- Destroys the relevancy portal with the given index.  Gives an error if the portal index doesn't exist.
---@param index number
function Server.DestroyRelevancyPortal(index) end

--- Change the source position of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@param source Vector
function Server.SetRelevancyPortalSource(index, source) end

--- Change the destination position of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@param dest Vector
function Server.SetRelevancyPortalDestination(index, dest) end

--- Change the mask of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@param mask number
function Server.SetRelevancyPortalMask(index, mask) end

--- Change the maximum range of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@param range number
function Server.SetRelevancyPortalRange(index, range) end

--- Get the source position of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@return Vector
function Server.GetRelevancyPortalSource(index) end

--- Get the destination position of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@return Vector
function Server.GetRelevancyPortalDestination(index) end

--- Get the mask of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@return number
function Server.GetRelevancyPortalMask(index) end

--- Get the maximum range of the relevancy portal with the given index.  Gives an error if the index is invalid.
---@param index number
---@return number
function Server.GetRelevancyPortalRange(index) end

--- Sets the maximum number of HTTP requests a Server can run at once. This does not impact the number of requests that can be made. Any made that exceed this limit will be queued (oldest to newest).
---@param limit number
---@return boolean
function Server.SetMaxHttpRequestsLimit(limit) end

---@return string
function Server.GetThunderdomeInstanceId() end

--- Simple hashing function that takes input string and returns hashed results.
---@param strToHash string
---@return number
function Server.GetStringHashed(strToHash) end

---@return number
function Server.GetThunderdomeExpectedPlayerCount() end

--- Return the Steam manifest BuildID for the active steam branch.
---@return number
function Server.GetSteamBuildId() end

--- Returns true if TD team-assignment data successfully parsed and added to supplied table. teamIdx is either 1 or 2 (Marines or Aliens).
---@param table table
---@param teamIdx number
---@return boolean
function Server.GetTDTeamAssignments(table, teamIdx) end

--- Returns true if TD team-assignment data for Commanders is successfully parsed and added to supplied table. teamIdx is either 1 or 2 (Marines or Aliens).
---@param teamIdx number
---@return string
function Server.GetTDCommanderAssignments(teamIdx) end

--- Requests details about the mods with the provided Id. The passed in callback will be called when the details are retrieved. The arguments to this callback are modId, title, and description.
---@param searchText string
---@param page number
---@param callback function
function Server.SearchWorshop(searchText, page, callback) end

---@param client ServerClient
---@param statName string
---@param data number
---@return boolean
function Server.SetUserStat_Int(client, statName, data) end

---@param client ServerClient
---@param statName string
---@param data number
---@return boolean
function Server.SetUserStat_Float(client, statName, data) end

---@param client ServerClient
---@return boolean
function Server.SaveUserStats(client) end

---@param client ServerClient
---@param achName string
---@return boolean
function Server.GrantAchievement(client, achName) end

---@param client ServerClient
---@param achName string
---@return boolean
function Server.GetUserAchievement(client, achName) end

---@return boolean
function Server.GetThunderdomeIsPrivate() end

function Server.SetThunderdomeMatchFinalized() end

---@return boolean
function Server.GetIsRankingActive() end

--- Requests the server wants to be ranked does some basic validdation of those options
---@return boolean
function Server.EnableServerRanking() end

--- When a rounds was in fact procssed, this function will return the last round complete round data, including player entries.
---@param results table
---@return boolean
function Server.GetLastProcessedRoundStats(results) end

--- Trigger processing of round data and running the skill system calculations. This is an asynchronous trigger, and requires an Event Hook be defined for 'OnRoundStatsProcessComplete'
---@param roundData table
---@return boolean
function Server.ProcessRoundStats(roundData) end


-----@enum Challenge.ReplayType
--Challenge.ReplayType = {
--    SkulkChallenge = "Challenge.ReplayType_SkulkChallenge"
--}


Server.kSkillFields_Skill = nil
Server.kSkillFields_SkillOffset = nil
Server.kSkillFields_CommSkill = nil
Server.kSkillFields_CommSkillOffset = nil
Server.kSkillFields_SkillSign = nil
Server.kSkillFields_CommSkillSign = nil
Server.kSkillFields_Adagrad = nil
Server.kSkillFields_CommAdagrad = nil
Server.kSkillFields_TD_Skill = nil
Server.kSkillFields_TD_SkillOffset = nil
Server.kSkillFields_TD_CommSkill = nil
Server.kSkillFields_TD_CommSkillOffset = nil
Server.kSkillFields_TD_SkillSign = nil
Server.kSkillFields_TD_CommSkillSign = nil
Server.kSkillFields_TD_Adagrad = nil
Server.kSkillFields_TD_CommAdagrad = nil
Server.kSkillFields_Xp = nil
Server.kSkillFields_Level = nil
Server.kSkillFields_Score = nil
Server.kSkillFields_Playtime = nil
Server.kSkillFields_MarinePlaytime = nil
Server.kSkillFields_AlienPlaytime = nil
Server.kSkillFields_CommanderPlaytime = nil
Server.SteamLobbyMaxDataFieldLength = nil
Server.SteamLobbyMaxChatMessageLength = nil
Server.SteamLobbyMaxUserSlots = nil