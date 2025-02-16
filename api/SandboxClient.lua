---@meta Sandbbox

---@class Sandbbox

--- Tells the game to refresh the list of Steamworks lobbies. This will clear any active Lobby filters set when called. Calling this will trigger event hook OnLobbyListResults
function Sandbox.RebuildLobbyList() end

--- Sets a new Key/Value pair to use when polling Steamworks for available and matching Lobbies
---@param key string
---@param value string
---@param comparator Sandbox.SteamLobbyFilterComparator
function Sandbox.SetLobbySearchStringFilter(key, value, comparator) end

--- Sets a new Key/Value pair to use when polling Steamworks for available and matching Lobbies
---@param key string
---@param value number
---@param comparator Sandbox.SteamLobbyFilterComparator
function Sandbox.SetLobbySearchIntegerFilter(key, value, comparator) end

--- Sets a new Key/Value pair to use when polling Steamworks for available and matching Lobbies
---@param distanceFilter Sandbox.SteamLobbyDistanceFilter
function Sandbox.SetLobbyDistanceFilter(distanceFilter) end

--- Sets the size limit on the lobby list returned from calling RebuildLobbyList. Minimum allowed is 1 and maximum is 50 (engine limits)
---@param limitSize number
function Sandbox.SetLobbyListSizeFilter(limitSize) end

--- Triggers an asynchronous call to Steamworks creating a new Lobby. This will result in OnLobbyCreated event hook being called upon completion
---@param lobbyType Sandbox.SteamLobbyType
---@param playerSlots number
function Sandbox.CreateLobby(lobbyType, playerSlots) end

--- Attempt to join a given Steamworks Lobby via asynchronous call. Callback result will trigger event hook OnLobbyEntered
---@param lobbyId string
function Sandbox.JoinLobby(lobbyId) end

--- Disconnect and closes handles to a given Steamworks Lobby. If no other clients are in this Lobby, it will be destroyed automatically
---@param lobbyId string
function Sandbox.LeaveLobby(lobbyId) end

--- Sends simple text chat message to all lobby members for a given connected lobbyId
---@param lobbyId string
---@param message string
function Sandbox.SendLobbyChatMessage(lobbyId, message) end

--- Cast a yes or no vote on the specified lobby vote.
---@param lobbyId string
---@param voteId string
---@param yesVote boolean
function Sandbox.CastLobbyVote(lobbyId, voteId, yesVote) end

--- Signal to all lobby clients that the given lobby vote has ended. Must be the lobby owner to end a vote.
---@param lobbyId string
---@param voteId string
function Sandbox.EndLobbyVote(lobbyId, voteId) end

--- Request the lobby owner to start a vote to kick the specified player from the lobby. May be any lobby Thunderdome.
---@param lobbyId string
---@param playerId string
function Sandbox.RequestVoteKickPlayer(lobbyId, playerId) end

--- Start a vote to kick the specified player. Must be the lobby owner to start a vote.
---@param lobbyId string
---@param playerId string
function Sandbox.StartVoteKickPlayer(lobbyId, playerId) end

--- Kick the given player from the specified lobby. Must be the lobby owner to kick a player.
---@param lobbyId string
---@param playerId string
function Sandbox.KickPlayerFromLobby(lobbyId, playerId) end

--- Defines a targeted server for members all members of a Lobby. This will trigger a callback to all clients, including owner, which calls event hook OnLobbyGameCreated
---@param lobbyId string
---@param serverAddress string
function Sandbox.SetLobbyGameServer(lobbyId, serverAddress) end

--- Manually pull the GameServer set for a lobby, returns empty string if not set. Requires to be a member of the lobby
---@param lobbyId string
---@return string
function Sandbox.GetLobbyGameServer(lobbyId) end

--- Forces client to poll Steamworks for a given Lobby and ID and trigger the OnLobbyGameServerUpdate event hook
---@param lobbyId string
function Sandbox.RefreshLobbyGameServer(lobbyId) end

--- Retrieves string value of a Lobby Member specific data field by name
---@param lobbyId string
---@param memberId string
---@param fieldName string
---@return string
function Sandbox.GetLobbyMemberData(lobbyId, memberId, fieldName) end

--- Sets a data field to a specific value for the LOCAL lobby member. This applies only to the local-Thunderdome. Any data changes are pushed to all other lobby members. Up to 8160 bytes can be set per field
---@param lobbyId string
---@param name string
---@param value string
function Sandbox.SetLobbyMemberData(lobbyId, name, value) end

--- This forces a given lobby metadata to be updated. This should only be used when not connected to a lobby. Will trigger OnLobbyDataUpdate event
---@param lobbyId string
function Sandbox.ReloadLobbyData(lobbyId) end

--- Sets a specific Lobby Data field (key) to contain value, for a given LobbyID. Field values can be up to 8192 bytes in size and also 0 bytes to clear a value
---@param lobbyId string
---@param key string
---@param value string
function Sandbox.SetLobbyDataField(lobbyId, key, value) end

--- Gets a specific Lobby Data fields value, for a given LobbyID. Should only be used while connected to a the lobby
---@param lobbyId string
---@param key string
---@return string
function Sandbox.GetLobbyDataField(lobbyId, key) end

--- Gets the maximum number of player slots of a given lobby
---@param lobbyId string
---@return number
function Sandbox.GetNumLobbySlots(lobbyId) end

--- Deletes a Lobby metadata by field name and will trigger and loddy-data update event
---@param lobbyId string
---@param key string
function Sandbox.RemoveLobbyDataField(lobbyId, key) end

--- Sets the owner of a lobby to memberId. Only works if local client is lobby owner
---@param lobbyId string
---@param memberId string
---@return boolean
function Sandbox.SetLobbyOwnerId(lobbyId, memberId) end

---@enum Sandbox.SteamLobbyType
Sandbox.SteamLobbyType = {
  Private = "Sandbox.SteamLobbyType_Private",
  FriendsOnly = "Sandbox.SteamLobbyType_FriendsOnly",
  Public = "Sandbox.SteamLobbyType_Public",
  Invisible = "Sandbox.SteamLobbyType_Invisible",
}

---@enum Sandbox.SteamLobbyFilterComparator
Sandbox.SteamLobbyFilterComparator = {
  EqualToOrLessThan = "Sandbox.SteamLobbyFilterComparator_EqualToOrLessThan",
  LessThan = "Sandbox.SteamLobbyFilterComparator_LessThan",
  Equal = "Sandbox.SteamLobbyFilterComparator_Equal",
  GreaterThan = "Sandbox.SteamLobbyFilterComparator_GreaterThan",
  EqualToOrGreaterThan = "Sandbox.SteamLobbyFilterComparator_EqualToOrGreaterThan",
  NotEqual = "Sandbox.SteamLobbyFilterComparator_NotEqual"
}

---@enum Sandbox.SteamLobbyDistanceFilter
Sandbox.SteamLobbyDistanceFilter = {
  Close = "Sandbox.SteamLobbyDistanceFilter_Close",
  Default = "Sandbox.SteamLobbyDistanceFilter_Default",
  Far = "Sandbox.SteamLobbyDistanceFilter_Far",
  Worldwide = "Sandbox.SteamLobbyDistanceFilter_Worldwide"
}