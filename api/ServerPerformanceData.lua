---@meta
---@class ServerPerformanceData
ServerPerformanceData = {}

---@return ServerPerformanceData
function ServerPerformanceData.new() end

--- Accumulate the result of the other in self. Used to get the performance for a longer duration
---@param other ServerPerformanceData
function ServerPerformanceData:Accumulate(other) end

--- Clears the contents
function ServerPerformanceData:Clear() end

--- Copy data from the other.
---@param other ServerPerformanceData
function ServerPerformanceData:Copy(other) end

--- Return a (dense) string representation of the performance data.
---
---         double dur = m_durationMs / 1000.0;
---         sprintf(m_stringBuf, "[%7.3f/%d](mr %d, ip %d, tr %d, sr %d, mp %d) Score %d, Q %d, np %d, ui %d [ up(%.0f/%.0f%%), mv (%.0f/%.0f%%), id %.0f%% ] [ iw %.0f, if %0.f ], net %.1f(%d/%d/%d)",
---             m_timestamp,
---             m_durationMs,
---             m_moverate,
---             m_interpMs,
---             m_tickrate,
---             m_sendrate,
---             m_maxPlayers,
---             m_score,
---             m_quality,
---             m_numPlayers,
---             m_updateIntervalMs,
---             m_numEntitiesUpdated / (m_tickrate * dur),
---             m_timeSpentOnUpdate / (10 * dur),
---             m_movesProcessed / dur,
---             m_timeSpentOnMoves / (10 * dur),
---             m_timeSpentIdling / (10 * dur),
---             m_numInterpWarns / dur,
---             m_numInterpFails / dur,
---             m_bytesSent / (1024.0 * dur),
---             m_clearingTimeMs10,
---             m_clearingTimeMs50,
---             m_clearingTimeMs100);
---@return string
function ServerPerformanceData:ToString() end

--- Returns the performance score as a SIGNED number -99 - 100, the higher the better.
---@return number
function ServerPerformanceData:GetScore() end

--- Returns the quality, 0-100, with 100 representing the server running at full load.
---@return number
function ServerPerformanceData:GetQuality() end

--- Shared.GetTime() for when this data was completed.
---@return number
function ServerPerformanceData:GetTimestamp() end

--- Server setting: moverate
---@return number
function ServerPerformanceData:GetMoverate() end

--- Server setting: interp, in ms
---@return number
function ServerPerformanceData:GetInterpMs() end

--- Server setting: tickrate
---@return number
function ServerPerformanceData:GetTickrate() end

--- Server setting: sendrate
---@return number
function ServerPerformanceData:GetSendrate() end

--- Server setting: max number of players
---@return number
function ServerPerformanceData:GetMaxPlayers() end

--- Duration in ms for this data
---@return number
function ServerPerformanceData:GetDurationMs() end

--- Number of players.
---@return number
function ServerPerformanceData:GetNumPlayers() end

--- Average world update interval (actual tickrate)
---@return number
function ServerPerformanceData:GetUpdateIntervalMs() end

--- Total number of entities updated, (ie number of entities * number of updates )
---@return number
function ServerPerformanceData:GetNumEntitiesUpdated() end

--- Total time in ms spent updating non-player entities.
---@return number
function ServerPerformanceData:GetTimeSpentOnUpdate() end

--- Total number of player moves processed
---@return number
function ServerPerformanceData:GetMovesProcessed() end

--- Total time in ms spent handling player moves
---@return number
function ServerPerformanceData:GetTimeSpentOnMoves() end

--- Total time in ms spent idling
---@return number
function ServerPerformanceData:GetTimeSpentIdling() end

--- Total sum of "incomplete levels" at tick time during the period.
--- Each time the server exits the Process(Player)Move stage with moves left over, the level gets incremented by 1, each time it exits with no moves left over it decrements by one. This affects tickrate, as the intervals between ticks (UpdateWorld) is increased by current incomplete level * constant (1ms), thus allowing an overloaded server to direct CPU towards processing player moves rather than world entities.
--- If this is consistently high, the server cannot handle the designated load.
---@return number
function ServerPerformanceData:GetIncompleteCount() end

--- Total number of times a player gets a slightly late network update (interval > 0.75 * interp)
---@return number
function ServerPerformanceData:GetNumInterpWarns() end

--- Total number of times a player gets a very late network update (interval >= interp). This is fatal to the client performance and is heavily penalized when it comes to determining server capability.
---@return number
function ServerPerformanceData:GetNumInterpFails() end

--- Average number of entities.
---@return number
function ServerPerformanceData:GetEntityCount() end

--- Total number of bytes sent to clients by server.
---@return number
function ServerPerformanceData:GetBytesSent() end

--- Max "clearing time" for a 10Mbit/sec (=1MByte/sec) upload.
--- Clearing time is a measure of peak upload use. For a 10Mbit upload, it takes 1ms to clear one kb of data.
--- On a heavily loaded server, it will be the extra latency the last connected player suffers.
--- Multiple estimates are required, as it is quite possible for a 10Mbit upload link to become overloaded, ie the last network update has not cleared when the next update is written.
---@return number
function ServerPerformanceData:GetClearingTimeMs10() end

--- Max "clearing time" for a 50Mbit/sec (=5Mbyte/sec) upload. See GetClearingTimeMs10
---@return number
function ServerPerformanceData:GetClearingTimeMs50() end

--- Max "clearing time" for a 100Mbit/sec (=10Mbyte/sec) upload.See GetClearingTimeMs10
---@return number
function ServerPerformanceData:GetClearingTimeMs100() end